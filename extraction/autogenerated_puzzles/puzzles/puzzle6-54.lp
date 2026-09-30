#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,kitchen).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,kitchen).
in_room(5,0,livingroom).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,sofa).
contains(0,3,sofa).
contains(0,4,statue).
contains(1,0,statue).
contains(1,2,closet).
contains(1,3,closet).
contains(1,5,chair).
contains(2,0,carpet).
contains(2,1,carpet).
contains(3,0,carpet).
contains(3,1,carpet).
contains(4,0,carpet).
contains(4,1,carpet).
contains(4,2,sofa).
contains(5,2,sofa).
contains(5,4,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).