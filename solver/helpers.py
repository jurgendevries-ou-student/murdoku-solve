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
