from itertools import product, chain, combinations

# -----------------------
# helper classes        #
# -----------------------
class Range:
    def __init__(self, variable, lower, upper):
        self.variable = variable
        self.lower = lower
        self.upper = upper

    def __repr__(self):
        return f'#{self.variable!r}, {self.lower!r}, {self.upper!r}.'

class Aggregate:
    def __init__(self, function, variables, body, operator, value):
        self.function = function
        self.variables = variables
        self.body = body
        self.operator = operator
        self.value = value

    def __eq__(self, other):
        if not isinstance(other, Aggregate):
            return NotImplemented

        return (self.function == other.function and self.variables == other.variables and self.body == other.body and self.operator == other.operator and self.value == other.value)

    def __hash__(self):
        return hash((self.function, self.variables, tuple(self.body), self.operator, self.value)) 

    def __repr__(self):
        return f'#{self.function!r}  ({self.variables!r} :- {self.body!r}) {self.operator!r} {self.value!r}.'

class Rule:
    def __init__(self, head, body):
        self.head = head
        self.body = body

    def __eq__(self, other):
        if not isinstance(other, Rule):
            return NotImplemented

        return (self.head == other.head and self.body == other.body)

    def __hash__(self):
        return hash((self.head, tuple(self.body))) 

    def __repr__(self):
        return f'{self.head!r} :- {self.body!r}.'

class ChoiceRule:
    def __init__(self, choices, body, value=None):
        self.choices = choices
        self.body = body
        self.value = value

    def __eq__(self, other):
        if not isinstance(other, ChoiceRule):
            return NotImplemented

        return (self.choices == other.choices and self.body == other.body and self.value == other.value)

    def __hash__(self):
        return hash((self.choices, tuple(self.body), self.value)) 

    def __repr__(self):
        return f'({self.choices!r}) = {self.value} :- {self.body!r}.'

class Literal:
    def __init__(self, atom, negated=False):
        self.atom = atom
        self.negated = negated

    def __eq__(self, other):
        if not isinstance(other, Literal):
            return NotImplemented

        return (self.atom == other.atom and self.negated == other.negated)

    def __hash__(self):
        return hash((self.atom, self.negated))

    def __repr__(self):
        return f'{self.atom!r}, {self.negated!r}'

class Atom:
    def __init__(self, predicate, args):
        self.predicate = predicate
        self.args = args

    def __eq__(self, other):
        if not isinstance(other, Atom):
            return False

        return(
            self.predicate == other.predicate
            and self.args == other.args
        )

    def __hash__(self):
        return hash((
            self.predicate, tuple(self.args)
        ))

    def __repr__(self):
        return f'Atom({self.predicate!r}, {self.args!r})'

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

def ground_choice_rule_from_known_atoms(choice_rule, known_atoms):
    substitutions = substitutions_from_literals(
        [condition for head, condition in choice_rule.choices],
        known_atoms,
        [{}]
    )

    grounded_choices = []

    for substitution in substitutions:
        for head, condition in choice_rule.choices:
            grounded_head = substitute_atom(head, substitution)

            grounded_condition = Literal(
                substitute_atom(condition.atom, substitution),
                condition.negated
            )
            grounded_choices.append((grounded_head, grounded_condition))
    
    return [
        ChoiceRule(
            choices = grounded_choices,
            body = choice_rule.body,
            value = choice_rule.value
        )
    ]


def match_atom(pattern, fact, substitution):
    if pattern.predicate != fact.predicate:
        return None

    result = dict(substitution)

    for pattern_arg, fact_arg in zip(pattern.args, fact.args):
        if pattern_arg.startswith("?"):
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
                grounded_rules = ground_choice_rule_from_known_atoms(rule, known_atoms)
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
        constants
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
                if not choice_rule_satisfied(rule, choice_interpretation):
                    return None
                continue

            if body_satisfied(rule.body, interpretation, constants):
                if rule.head is not None:
                    if rule.head not in interpretation:
                        interpretation.add(rule.head)
                        changed = True
                else:
                    # all body literals are in the interpretation, but this is a constraint (empty head), so it is invalid! 
                    return None
    return interpretation

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
    atoms = {rule.head for rule in rules if isinstance(rule, Rule) and rule.head is not None}

    atoms.update(head for rule in rules if isinstance(rule, ChoiceRule) for head, condition in rule.choices)

    answer_sets = []

    for interpretation_tuple in powerset(atoms):
        interpretation = set(interpretation_tuple)

        reduct_program = reduct(rules, interpretation)

        # add selected choice atoms as facts
        choice_facts = [
            Rule(atom, [])
            for atom in interpretation
            if atom in choice_atoms(rules)
        ]

        model = least_model(reduct_program + choice_facts, interpretation, constants)

        if model is not None and model == interpretation:
            answer_sets.append(interpretation)
    return answer_sets

#-----------#
### TEST ###
#-----------#
pattern = Atom("person", ['?X'])
fact = Atom("person", ["alice"])
fact2 = Atom("dog", ["figo"])
matched_atom = match_atom(pattern, fact, {})
matched_atom2 = match_atom(pattern, fact2, {})
print(matched_atom)
print(matched_atom2)



constants = {"a","b","c"}
rule = Rule(Atom("p",["?X"]), [Literal(Atom("q",["?X"]))])
print(list(substitutions(rule, {"a","b"})))
print()
grounded = ground_rule(rule, constants)

for grounded_rule in grounded:
    print(f'{grounded_rule.head.predicate}({grounded_rule.head.args}) :- {[(b.atom.predicate, b.atom.args) for b in grounded_rule.body]}')


program = {'rules': [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["?X"]), body=[Literal(Atom("p",["?X"]))]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("q",["?X"]))])
]}

program2 = {'rules': [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("p",["b"]), body=[]),
    Rule(head = Atom("q",["?X"]), body=[Literal(Atom("p",["?X"]))])
]}

program3 = {'rules': [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["a"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]}

program4 = {'rules': [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["b"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]}

program5 = {'rules': [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["a"]), body=[]),
    Rule(head = Atom("p",["b"]), body=[]),
    Rule(head = Atom("q",["b"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]}

program6 = {'rules': [
    Rule(head = Atom("p",[]), body=[Literal(Atom("q",[]), True)]),
    Rule(head = Atom("q",[]), body=[Literal(Atom("p",[]), True)])
]}

program7 = {'rules': [
    Rule(head = Atom("bird",["tweety"]), body=[]),
    Rule(head = Atom("flies",["?X"]), body=[Literal(Atom("bird",["?X"])), Literal(Atom("abnormal", ["?X"]), True)])
]}

program8 = {'rules': [
    Rule(head = Atom("abnormal",["tweety"]), body=[]),
    Rule(head = Atom("bird",["tweety"]), body=[]),
    Rule(head = Atom("flies",["?X"]), body=[Literal(Atom("bird",["?X"])), Literal(Atom("abnormal", ["?X"]), True)])
]}

# --- Programs with constraints ---
program9 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=None, body=[Literal(Atom("p",["a"]))])
]}

program10 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=Atom("q",["b"]), body=[]),
    Rule(head=None, body=[Literal(Atom("p",["b"]))])
]}

program11 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=Atom("q",["a"]), body=[]),
    Rule(head=None, body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]}

program12 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=Atom("q",["b"]), body=[]),
    Rule(head=None, body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]}

program13 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=Atom("p",["b"]), body=[]),
    Rule(head=Atom("q",["?X"]), body=[Literal(Atom("p",["?X"]))]),
    Rule(head=None, body=[Literal(Atom("q",["a"]))])
    # not a valid solution, because the program is inconsisten q(a) -> p(a). but this is inconsisten because of constraint: -> q(a).
]}

program14 = {'rules': [
    Rule(head=Atom("p",[]), body=[Literal(Atom("q",[]), True)]),
    Rule(head=Atom("q",[]), body=[Literal(Atom("p",[]), True)])
]}

program15 = {'rules': [
    Rule(head=Atom("p",[]), body=[Literal(Atom("q",[]), True)]),
    Rule(head=Atom("q",[]), body=[Literal(Atom("p",[]), True)]),
    Rule(head=None, body=[Literal(Atom("q",[]))])
]}

program16 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=None, body=[Literal(Atom("p",["a"]), True)]),
]}

program17 = {'rules': [
    Rule(head=None, body=[Literal(Atom("p",["a"]), True)]),
]}

program18 = {'rules': [
    Rule(head=Atom("p",["a"]), body=[]),
    Rule(head=Atom("p",["b"]), body=[]),
    Rule(head=None, body=[Literal(Atom("q",[]))])
]}

print("RUNNING TEST PROGRAM:")

ground_program = ground(program18)
answer_sets = solver1(ground_program, program.get('constants', {}))

print (ground_program)
print(answer_sets)

# print('----------')
# pattern = Atom('p',['?X'])
# fact = Atom('p',['a'])

# substitution = match_atom(pattern, fact, {})
# print(substitution)

# result = substitute_atom(Atom('q',['?X']), substitution)
# print(result.args)



# #count{p : p(X)}
# p(a;b;c)


interp_test0 = [Atom('q',['a'])]
interp_test1 = [Atom('p',['a'])]
interp_test2 = [Atom('p',['a']),Atom('p',['b'])]
interp_test3 = [Atom('p',['a']),Atom('p',['b']),Atom('p',['c'])]
interp_test4 = [Atom('p',['a']),Atom('p',['b']),Atom('p',['c']), Atom('p',['d'])]
interp_test4_1 = {Atom('p',['a']),Atom('p',['b']),Atom('p',['c']), Atom('p',['d']), Atom('p',['d'])}
agg_test = Aggregate('count', ['?X'], [Literal(Atom('p', ['?X']))], '>=', 3)

print(evaluate_aggregate(agg_test, interp_test0,{}))
print(evaluate_aggregate(agg_test, interp_test1,{}))
print(evaluate_aggregate(agg_test, interp_test2,{}))
print(evaluate_aggregate(agg_test, interp_test3,{}))
print(evaluate_aggregate(agg_test, interp_test4,{}))
print(evaluate_aggregate(agg_test, interp_test4_1,{}))

print(evaluate_aggregate_satisfied(agg_test, interp_test0,{}))
print(evaluate_aggregate_satisfied(agg_test, interp_test1,{}))
print(evaluate_aggregate_satisfied(agg_test, interp_test2,{}))
print(evaluate_aggregate_satisfied(agg_test, interp_test3,{}))
print(evaluate_aggregate_satisfied(agg_test, interp_test4,{}))
print(evaluate_aggregate_satisfied(agg_test, interp_test4_1,{}))

#------
print('### TEST INACTIVE PEOPLE')
program_test = {'rules': [

    # Facts
    Rule(head=Atom("person", ["alice"]), body=[]),
    Rule(head=Atom("person", ["bob"]), body=[]),
    Rule(head=Atom("person", ["charlie"]), body=[]),

    # Charlie is inactive
    Rule(head=Atom("inactive", ["charlie"]), body=[]),

    # every person is active, if nowhere it is stated he/she is inactive
    Rule(head=Atom("active", ["?X"]),body=[Literal(Atom("person", ["?X"])),Literal(Atom("inactive", ["?X"]), negated=True)]),

    # There are at least 2 active people
    Rule(head=Atom("enough_active", []),body=[Aggregate("count",["?X"],[Literal(Atom("active", ["?X"]))],">=",2)]),

    # Charlie cannot be active
    Rule(head=None, body=[Literal(Atom("active", ["charlie"]))])
]}

ground_program = ground(program_test)
answer_sets = solver1(ground_program, program_test.get('constants', {}))

print (ground_program)
print(answer_sets)

#------
print('### TEST FRIENDS PEOPLE')
program_test = {'rules': [

    # Facts
    Rule(head=Atom("person", ["alice"]), body=[]),
    Rule(head=Atom("person", ["bob"]), body=[]),
    Rule(head=Atom("person", ["charlie"]), body=[]),

    # Charlie is inactive
    Rule(head=Atom("friend", ["alice", 'bob']), body=[]),
    Rule(head=Atom("friend", ["alice", 'charlie']), body=[]),
    Rule(head=Atom("friend", ["bob", 'alice']), body=[]),

    
    # There are at least 2 active people
    Rule(head=Atom("enough_friends", ['?X']),body=[Literal(Atom('person',['?X'])), Aggregate("count",["?Y"],[Literal(Atom("friend", ["?X","?Y"]))],">=",2)])
]}

ground_program = ground(program_test)
answer_sets = solver1(ground_program, program_test.get('constants', {}))

print (ground_program)
print(answer_sets)

#------------
print("TEST CHOICE RULES")
program_test = {'rules': [

    # Facts
    Rule(head=Atom("p", ["a"]), body=[]),
    Rule(head=Atom("p", ["b"]), body=[]),

    # Choice rule for {q(X) : p(X)} = 1
    ChoiceRule(choices=[(Atom("q", ["?X"]), Literal(Atom("p",['?X'])))], body=[], value=1),
]}
ground_program = ground(program_test)
answer_sets = solver1(ground_program, program_test.get('constants', {}))

print (ground_program)
print(answer_sets)

# Tonight
# TODO add constants

# TODO solve simple puzzle
# TODO add new puzzle
# TODO translate puzzles to input for grounder-solver


print("TEST CONSTANTS")

program_test = {
    'constants': {
        'n': 2
    },

    'rules': [

        # cell(R) for R = 0..n
        Rule(
            head=Atom("cell", ["?R", "?C"]),
            body=[
                Range("?R", 0, "n"),
                Range("?C", 0, "n")
            ]
        ),
    ]
}

ground_program = ground(program_test)

print("grounded:")
for rule in ground_program:
    print(rule)

answer_sets = solver1(
    ground_program,
    program_test.get('constants', {})
)

print("solved:")
for answer_set in answer_sets:
    print(answer_set)