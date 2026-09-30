#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,livingroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,kitchen).
in_room(4,1,bathroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,sofa).
contains(0,1,carpet).
contains(0,2,carpet).
contains(1,0,sofa).
contains(1,1,chair).
contains(1,4,closet).
contains(1,5,closet).
contains(2,1,sofa).
contains(2,2,sofa).
contains(2,3,sofa).
contains(2,4,sofa).
contains(3,0,bed).
contains(3,5,closet).
contains(4,5,closet).
contains(5,1,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).