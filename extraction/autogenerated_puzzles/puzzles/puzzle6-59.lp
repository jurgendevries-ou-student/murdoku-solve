#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,kitchen).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(1,2,box).
contains(1,4,statue).
contains(2,1,chair).
contains(2,3,closet).
contains(2,4,closet).
contains(3,0,carpet).
contains(3,4,closet).
contains(3,5,closet).
contains(4,0,carpet).
contains(4,1,statue).
contains(4,3,sofa).
contains(5,0,carpet).
contains(5,3,sofa).

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