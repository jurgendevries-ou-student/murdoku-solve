#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bathroom).
in_room(3,4,kitchen).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
contains(0,2,closet).
contains(1,2,closet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,3,carpet).
contains(2,4,carpet).
contains(3,0,closet).
contains(3,1,closet).
contains(4,0,chair).
contains(4,3,sofa).
contains(4,4,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).