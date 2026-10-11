from helpers import *
from grounder import *
from itertools import combinations

# -----------------------
# Solving               #
# -----------------------
def reduct(program, interpretation):
    result = []

    for rule in program:
        if isinstance(rule, ChoiceRule):
            result.append(rule)
            continue

        # if a negative literal is false (atom is in the interpretation), remove the rule
        if any(lit.negated and lit.atom in interpretation for lit in rule.body if isinstance(lit, Literal)):
            continue

        # remove remaining negative literals
        body = [lit for lit in rule.body if not isinstance(lit, Literal) or not lit.negated]

        result.append(Rule(rule.head, body))

    return result

def evaluate_aggregate(aggregate, interpretation, constants):
    substitutions = substitutions_from_literals(
        aggregate.body,
        interpretation,
        [{}]
    )
    if aggregate.function == 'count':
        return len(substitutions)
    raise ValueError(f'Unsupported aggregate function: {aggregate.function}')

def evaluate_aggregate_satisfied(aggregate, interpretation, constants):
    result = evaluate_aggregate(aggregate, interpretation, constants)

    if aggregate.operator == '>=':
        return result >= aggregate.value
    if aggregate.operator == '<=':
        return result <= aggregate.value
    if aggregate.operator == '>':
        return result > aggregate.value
    if aggregate.operator == '<':
        return result < aggregate.value
    if aggregate.operator == '=':
        return result == aggregate.value

    raise ValueError(f'Unsupported operator: {aggregate.operator}')

def element_satisfied(element, interpretation, constants):
    if isinstance(element, Literal):
        return element.atom in interpretation

    elif isinstance(element, Aggregate):
        return evaluate_aggregate_satisfied(element, interpretation, constants)

    return False

def body_satisfied(body, interpretation, constants):
    return all(element_satisfied(element, interpretation, constants) for element in body)

def choice_rule_satisfied(rule, interpretation):
    selected = [head for head, condition in rule.choices if condition.atom in interpretation and head in interpretation]

    if rule.value is None:
        return True

    return len(selected) == rule.value

def least_model(program, choice_interpretation, constants):
    interpretation = set()

    changed = True
    while changed:
        changed = False
        for rule in program:
            if isinstance(rule, ChoiceRule):
                continue

            if body_satisfied(rule.body, interpretation, constants):
                if rule.head is not None:
                    if rule.head not in interpretation:
                        interpretation.add(rule.head)
                        changed = True
                else:
                    # all body literals are in the interpretation, but this is a constraint (empty head), so it is invalid! 
                    return None
        for rule in program:
            if isinstance(rule, ChoiceRule):
                if not choice_rule_satisfied(rule, interpretation | choice_interpretation):
                    return None
    return interpretation | choice_interpretation

## Solver1

def powerset(items):
    items = list(items)

    for r in range(len(items) + 1):
        yield from combinations(items, r)

def choice_atoms(program):
    return {
        head
        for rule in program
        if isinstance(rule, ChoiceRule)
        for head, condition in rule.choices
    }

def solver1(rules, constants):
    choice_atoms_set = choice_atoms(rules)

    mandatory_atoms = {
        rule.head
        for rule in rules
        if isinstance(rule, Rule)
        and rule.head is not None
        and not rule.body
    }

    choice_atoms_set -= mandatory_atoms

    answer_sets = []

    for interpretation_tuple in powerset(choice_atoms_set):
        interpretation = set(interpretation_tuple)
        interpretation.update(mandatory_atoms)

        reduct_program = reduct(rules, interpretation)

        # add selected choice atoms as facts
        choice_facts = [
            Rule(atom, [])
            for atom in interpretation
            if atom in choice_atoms_set
        ]

        model = least_model(
            reduct_program + choice_facts,
            interpretation,
            constants
        )

        if model is not None:
            answer_sets.append(model)

    return answer_sets
