%%%%%%%%%%%%%%%%%%%%%%%%%
%        facts          %
%%%%%%%%%%%%%%%%%%%%%%%%%
#const n = 3.

% rooms
room(a).
room(b).



% persons
suspect(alice).
suspect(bob).
victim(charlie).

% genders
female(alice).
female(charlie).
male(bob).

% objects
object(plant).
object(tv).
object(chair).

% cells
cell(R,C) :- R = 1..n, C = 1..n.

% object locations
contains(1,1,plant).
contains(3,3,tv).
contains(2,3,chair).

% Which cells are in the same room
in_room(1,1,a).
in_room(1,2,a).
in_room(1,3,a).
in_room(2,1,b).
in_room(2,2,b).
in_room(2,3,b).
in_room(3,1,b).
in_room(3,2,b).
in_room(3,3,b).