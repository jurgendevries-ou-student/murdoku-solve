#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).

%%%% Objects
object(sofa).
object(chair).
object(closet).
can_not_be_occupied(closet).
contains(0,2,closet).
contains(1,1,chair).
contains(1,2,closet).
contains(2,0,sofa).
contains(2,1,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).