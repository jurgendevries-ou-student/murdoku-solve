#const n = 4.
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
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).

%%%% Objects
object(sofa).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(0,2,box).
contains(1,0,sofa).
contains(1,1,bed).
contains(1,4,closet).
contains(2,0,box).
contains(2,4,closet).
contains(3,2,sofa).
contains(3,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).