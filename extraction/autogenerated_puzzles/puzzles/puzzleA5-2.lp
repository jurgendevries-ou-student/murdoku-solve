#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).

%%%% Objects
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(1,3,closet).
contains(1,4,closet).
contains(2,2,chair).
contains(3,1,box).
contains(3,4,bed).
contains(4,0,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).