#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,bedroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(3,0,livingroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).

%%%% Objects
object(sofa).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,box).
contains(1,0,closet).
contains(1,1,sofa).
contains(1,2,sofa).
contains(2,0,closet).
contains(3,3,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).