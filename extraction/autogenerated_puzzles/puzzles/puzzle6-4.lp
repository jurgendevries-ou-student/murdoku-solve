#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,kitchen).
in_room(1,1,bedroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,bedroom).
in_room(3,1,livingroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,1,bed).
contains(0,2,statue).
contains(0,5,chair).
contains(1,1,closet).
contains(1,5,chair).
contains(2,1,closet).
contains(3,4,closet).
contains(4,2,sofa).
contains(4,3,sofa).
contains(4,4,closet).
contains(5,1,statue).
contains(5,4,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).