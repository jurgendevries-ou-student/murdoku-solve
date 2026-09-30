#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,livingroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,kitchen).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,kitchen).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

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
contains(1,1,statue).
contains(2,0,chair).
contains(2,1,statue).
contains(2,2,closet).
contains(3,1,carpet).
contains(3,2,closet).
contains(3,4,box).
contains(4,0,sofa).
contains(4,3,closet).
contains(5,0,sofa).
contains(5,1,box).
contains(5,3,closet).

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
victim(victoria).
female(victoria).