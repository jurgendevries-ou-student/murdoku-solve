#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(1,0,bathroom).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,kitchen).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,statue).
contains(0,1,chair).
contains(1,4,chair).
contains(3,2,statue).
contains(3,3,sofa).
contains(3,4,sofa).
contains(4,3,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).