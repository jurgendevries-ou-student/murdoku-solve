#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,bed).
contains(1,1,statue).
contains(2,1,sofa).
contains(3,1,sofa).
contains(3,3,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).