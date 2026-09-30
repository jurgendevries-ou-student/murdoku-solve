#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,bed).
contains(0,4,box).
contains(1,2,statue).
contains(2,2,closet).
contains(2,3,closet).
contains(4,0,chair).
contains(4,4,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).