#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,livingroom).
in_room(1,0,bathroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,carpet).
contains(1,1,closet).
contains(1,2,closet).
contains(2,3,sofa).
contains(3,0,statue).
contains(3,3,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).