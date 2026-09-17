class(person).
class(suspect).
class(victim).

is_sublcass(suspect, person).
is_subclass(victim, person).

%% subclass recursive
subclass(C1,C2) :- is_subclass(C1,C2).
subclass(C1,C3) :- is_subclass(C2,C3), subclass(C1,C2). % is C1 a subclass of C3, yes if C2 is a subclass of C3 and C1 is subclass of C2. C1 <- C2 <- C3
%% ClosedWorldAsumption
-subclass(C1,C2) :- class(C1), class(C2), not subclass(C1,C2).

suspect(alice).
suspect(bob).
suspect(charles).
victim(vince).

female(alice).
male(bob).
male(charles).
male(vince).

member(X,C) :- is_a(X,C).
member(X,C) :- is_a(X,C0), subclass(C0,C).

siblings(C1,C2) :- is_subclass(C1,C), is_subclass(C2,C), C1!=C2.
-member(X,C2) :- member(X,C1), siblings(C1,C2), C1 != C2.
