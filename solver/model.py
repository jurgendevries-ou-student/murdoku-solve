from helpers import *
from solver.solver import *
from grounder import *

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
# DONE add constants + ranges
# TODO solve simple puzzle
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

program_test = {
    'constants': {
        'n': 1
    },

    'rules': [

        # Two people
        Rule(
            head=Atom("person", ["alice"]),
            body=[]
        ),

        Rule(
            head=Atom("person", ["bob"]),
            body=[]
        ),

        # Generate the 2x2 grid
        Rule(
            head=Atom("cell", ["?R", "?C"]),
            body=[
                Range("?R", 0, "n"),
                Range("?C", 0, "n")
            ]
        ),

        # Every cell can be occupied
        Rule(
            head=Atom("can_occupy", ["?R", "?C"]),
            body=[
                Literal(Atom("cell", ["?R", "?C"]))
            ]
        ),

        # Every person occupies exactly one cell
        ChoiceRule(
            choices=[
                (
                    Atom("at", ["?P", "?R", "?C"]),
                    Literal(Atom("can_occupy", ["?R", "?C"]))
                )
            ],
            body=[
                Literal(Atom("person", ["?P"]))
            ],
            value=1
        ),
        Rule(
            head=None,
            body=[
                Literal(
                    Atom("cell", ["?R", "?C"])
                ),
                Aggregate(
                    function="count",
                    variables=["?P", "?C2"],
                    body=[
                        Literal(
                            Atom("at", ["?P", "?R", "?C2"])
                        )
                    ],
                    operator=">",
                    value=1
                )
            ]
        ),
        Rule(
            head=None,
            body=[
                Literal(
                    Atom("cell", ["?R", "?C"])
                ),
                Aggregate(
                    function="count",
                    variables=["?P", "?R2"],
                    body=[
                        Literal(
                            Atom("at", ["?P", "?R2", "?C"])
                        )
                    ],
                    operator=">",
                    value=1
                )
            ]
        ),
        Rule(
            Atom("at", ["alice", 0, 0]),
            []
        ),
    ]
}

ground_program = ground(program_test)

print("GROUNDED:")
for rule in ground_program:
    print(rule)

answer_sets = solver1(
    ground_program,
    program_test.get('constants', {})
)

print("\nANSWER SETS:")
for answer_set in answer_sets:
    print(answer_set)

program_test = {
    'constants': {
        'n': 1
    },

    'rules': [

        # People
        Rule(
            Atom("person", ["alice"]),
            []
        ),

        Rule(
            Atom("person", ["bob"]),
            []
        ),


        # Grid
        Rule(
            Atom("cell", ["?R", "?C"]),
            [
                Range("?R", 0, "n"),
                Range("?C", 0, "n")
            ]
        ),


        # Every cell can be occupied
        Rule(
            Atom("can_occupy", ["?R", "?C"]),
            [
                Literal(
                    Atom("cell", ["?R", "?C"])
                )
            ]
        ),


        # Each person gets exactly one cell
        ChoiceRule(
            choices=[
                (
                    Atom("at", ["?P", "?R", "?C"]),
                    Literal(
                        Atom("can_occupy", ["?R", "?C"])
                    )
                )
            ],
            body=[
                Literal(
                    Atom("person", ["?P"])
                )
            ],
            value=1
        ),


        # Alice is given to be at (0,0)
        Rule(
            Atom("at", ["alice", 0, 0]),
            []
        ),


        # Bob is given to be at (1,1)
        Rule(
            Atom("at", ["bob", 1, 1]),
            []
        ),
    ]
}

ground_program = ground(program_test)

print("GROUNDED:")
for rule in ground_program:
    print(rule)

answer_sets = solver1(
    ground_program,
    program_test.get('constants', {})
)

print("\nANSWER SETS:")
for answer_set in answer_sets:
    print(answer_set)