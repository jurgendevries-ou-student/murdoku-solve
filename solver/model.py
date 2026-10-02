from itertools import product, chain, combinations

# -----------------------
# helper classes        #
# -----------------------
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
            return not NotImplemented

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
    body = [Literal(substitute_atom(lit.atom, substitution), lit.negated) for lit in rule.body]

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

def substitutions_from_body(rule, known_atoms):
    substitutions = [{}]

    positive_literals = [lit for lit in rule.body if not lit.negated]
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

def ground_rule_from_known_atoms(rule, known_atoms):
    substitutions = substitutions_from_body(rule, known_atoms)
    return [substitute_rule(rule, substitution) for substitution in substitutions]

def ground(program):
    ground_program = []
    known_atoms = set()

    # add starting facts
    for rule in program:
        if not rule.body:
            ground_program.append(rule)
            known_atoms.add(rule.head)

    # keep looping untill no new facts have been added
    changed = True
    while changed:
        changed = False

        # for all program rules
        for rule in program:
            # skip empty rule bodies
            if not rule.body:
                continue

            # ground this rule using what we currently know
            grounded_rules = ground_rule_from_known_atoms(rule, known_atoms)

            # check newly grounded rules for new facts
            for grounded_rule in grounded_rules:
                if grounded_rule not in ground_program:
                    ground_program.append(grounded_rule)

                    if grounded_rule.head not in known_atoms:
                        known_atoms.add(grounded_rule.head)
                        changed = True
    return ground_program

# -----------------------
# Solving               #
# -----------------------
def reduct(program, interpretation):
    result = []

    for rule in program:
        # if a negative literal is false (atom is in the interpretation), remove the rule
        if any(lit.negated and lit.atom in interpretation for lit in rule.body):
            continue

        # remove remaining negative literals
        body = [lit for lit in rule.body if not lit.negated]

        result.append(Rule(rule.head, body))

    return result

def least_model(program):
    interpretation = set()

    changed = True
    while changed:
        changed = False
        for rule in program:
            if all(lit.atom in interpretation for lit in rule.body):
                if rule.head is not None:
                    if rule.head not in interpretation:
                        interpretation.add(rule.head)
                        changed = True
    return interpretation

## Solver1

def powerset(items):
    items = list(items)

    for r in range(len(items) + 1):
        yield from combinations(items, r)

def solver1(program):
    atoms = {rule.head for rule in program if rule.head is not None}

    answer_sets = []

    for interpretation_tuple in powerset(atoms):
        interpretation = set(interpretation_tuple)

        reduct_program = reduct(program, interpretation)
        model = least_model(reduct_program)

        if model == interpretation:
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


program = [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["?X"]), body=[Literal(Atom("p",["?X"]))]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("q",["?X"]))])
]

program2 = [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("p",["b"]), body=[]),
    Rule(head = Atom("q",["?X"]), body=[Literal(Atom("p",["?X"]))])
]

program3 = [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["a"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]

program4 = [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["b"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]

program5 = [
    Rule(head = Atom("p",["a"]), body=[]),
    Rule(head = Atom("q",["a"]), body=[]),
    Rule(head = Atom("p",["b"]), body=[]),
    Rule(head = Atom("q",["b"]), body=[]),
    Rule(head = Atom("r",["?X"]), body=[Literal(Atom("p",["?X"])), Literal(Atom("q",["?X"]))])
]

program6 = [
    Rule(head = Atom("p",[]), body=[Literal(Atom("q",[]), True)]),
    Rule(head = Atom("q",[]), body=[Literal(Atom("p",[]), True)])
]

program7 = [
    Rule(head = Atom("bird",["tweety"]), body=[]),
    Rule(head = Atom("flies",["?X"]), body=[Literal(Atom("bird",["?X"])), Literal(Atom("abnormal", ["?X"]), True)])
]

program8 = [
    Rule(head = Atom("abnormal",["tweety"]), body=[]),
    Rule(head = Atom("bird",["tweety"]), body=[]),
    Rule(head = Atom("flies",["?X"]), body=[Literal(Atom("bird",["?X"])), Literal(Atom("abnormal", ["?X"]), True)])
]

ground_program = ground(program8)
answer_sets = solver1(ground_program)

print (ground_program)
print(answer_sets)

print('----------')
pattern = Atom('p',['?X'])
fact = Atom('p',['a'])

substitution = match_atom(pattern, fact, {})
print(substitution)

result = substitute_atom(Atom('q',['?X']), substitution)
print(result.args)