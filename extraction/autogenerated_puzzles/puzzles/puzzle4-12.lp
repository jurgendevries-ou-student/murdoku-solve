#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(1,0,kitchen).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,bedroom).
in_room(2,3,bathroom).
in_room(3,0,livingroom).
in_room(3,1,kitchen).
in_room(3,2,bedroom).
in_room(3,3,bathroom).

%%%% Objects
object(sofa).
object(chair).
object(box).
can_not_be_occupied(box).
contains(0,0,chair).
contains(0,2,sofa).
contains(1,1,box).
contains(1,2,sofa).
contains(2,3,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).