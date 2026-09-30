#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,bathroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,bathroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bathroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,0,chair).
contains(0,3,bed).
contains(1,2,box).
contains(2,1,bed).
contains(2,2,box).
contains(3,3,closet).
contains(3,4,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).