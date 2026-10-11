from helpers import *
from itertools import product
# -----------------------
# Grounding             #
# -----------------------
def substitute_atom(atom, substitution):
    args = [substitution.get(arg, arg) for arg in atom.args]

    return Atom(atom.predicate, args)

def substitute_rule(rule, substitution):
    head = (substitute_atom(rule.head, substitution) if rule.head else None)
    body = [Literal(substitute_atom(element.atom, substitution), element.negated) if isinstance(element, Literal) else substitute_aggregate(element, substitution) if isinstance(element, Aggregate) else element for element in rule.body if not isinstance(element, Range)]

    return Rule(head, body)

def variables(rule):
    vars_ = set()
    atoms = []

    if rule.head:
        atoms.append(rule.head)

    atoms.extend(lit.atom for lit in rule.body)

    for atom in atoms:
        for arg in atom.args:
            if arg.startswith("?"):
                vars_.add(arg)

    return vars_

def substitutions(rule, constants):
    vars_ = list(variables(rule))

    for values in product(constants, repeat=len(vars_)):
        yield dict(zip(vars_, values))

def ground_rule(rule, constants):
    return [substitute_rule(rule, subst) for subst in substitutions(rule, constants)]

def ground_choice_rule_from_known_atoms(choice_rule, known_atoms, constants):
    outer_substitutions = substitutions_from_body(choice_rule, known_atoms, constants)

    grounded_rules = []

    for outer_sub in outer_substitutions:
        choice_substitutions = substitutions_from_literals(
            [condition for head, condition in choice_rule.choices],
            known_atoms,
            [outer_sub]
        )

        grounded_choices = []
        for substitution in choice_substitutions:
            for head, condition in choice_rule.choices:
                grounded_head = substitute_atom(head, substitution)
    
                grounded_condition = Literal(
                    substitute_atom(condition.atom, substitution),
                    condition.negated
                )

                grounded_choices.append((grounded_head, grounded_condition))        

        grounded_rules.append(
            ChoiceRule(
                choices = grounded_choices,
                body = [
                    Literal(substitute_atom(element.atom, outer_sub), element.negated) if isinstance(element, Literal) else element for element in choice_rule.body
                ],
                value = choice_rule.value
            )
        )

    return grounded_rules


def match_atom(pattern, fact, substitution):
    if pattern.predicate != fact.predicate:
        return None

    result = dict(substitution)

    for pattern_arg, fact_arg in zip(pattern.args, fact.args):
        if isinstance(pattern_arg, str) and pattern_arg.startswith("?"):
            if pattern_arg in result:
                if result[pattern_arg] != fact_arg:
                    return None
            else:
                result[pattern_arg] = fact_arg
        elif pattern_arg != fact_arg:
            return None
    return result

def substitutions_from_literals(literals, known_atoms, substitutions):
    positive_literals = [lit for lit in literals if isinstance(lit, Literal) and not lit.negated]
    for literal in positive_literals:
        new_substitutions = []

        for substitution in substitutions:
            pattern = substitute_atom(literal.atom, substitution)

            for fact in known_atoms:
                new_substitution = match_atom(pattern, fact, substitution)
                if new_substitution is not None:
                    new_substitutions.append(new_substitution)

        substitutions = new_substitutions
    return substitutions

def substitute_aggregate(aggregate, substitution):
    body = [Literal(substitute_atom(element.atom, substitution), element.negated) if isinstance(element, Literal) else element for element in aggregate.body]

    return Aggregate(aggregate.function, aggregate.variables, body, aggregate.operator, aggregate.value)

def substitutions_from_range(range_, substitutions, constants):
    upper = constants[range_.upper] if isinstance(range_.upper, str) else range_.upper
    lower = constants[range_.lower] if isinstance(range_.lower, str) else range_.lower
    result = []

    for substitution in substitutions:
        for value in range(lower, upper + 1):
            new_substitution = dict(substitution)
            new_substitution[range_.variable] = value
            result.append(new_substitution)
    return result

def substitutions_from_body(rule, known_atoms, constants):
    substitutions = [{}]

    for element in rule.body:
        if isinstance(element, Literal):
            substitutions = substitutions_from_literals(
                [element],
                known_atoms,
                substitutions
            )

        elif isinstance(element, Range):
            substitutions = substitutions_from_range(
                element,
                substitutions,
                constants
            )

    return substitutions
            

def ground_rule_from_known_atoms(rule, known_atoms, constants):
    substitutions = substitutions_from_body(rule, known_atoms, constants)
    return [substitute_rule(rule, substitution) for substitution in substitutions]

def ground(program):
    ground_program = []
    known_atoms = set()
    rules = program['rules']
    constants = program.get('constants', {})

    # add starting facts
    for rule in rules:
        if isinstance(rule, Rule) and not rule.body:
            ground_program.append(rule)
            known_atoms.add(rule.head)

    # keep looping untill no new facts have been added
    changed = True
    while changed:
        changed = False

        # for all program rules
        for rule in rules:
            # ground this rule using what we currently know
            if isinstance(rule, ChoiceRule):
                grounded_rules = ground_choice_rule_from_known_atoms(rule, known_atoms, constants)
            # skip empty rule bodies
            elif not rule.body:
                continue
            else:
                grounded_rules = ground_rule_from_known_atoms(rule, known_atoms, constants)

            # check newly grounded rules for new facts
            for grounded_rule in grounded_rules:
                if grounded_rule not in ground_program:
                    ground_program.append(grounded_rule)

                    if isinstance(rule, Rule) and grounded_rule.head is not None and grounded_rule.head not in known_atoms:
                        known_atoms.add(grounded_rule.head)
                        changed = True
    return ground_program