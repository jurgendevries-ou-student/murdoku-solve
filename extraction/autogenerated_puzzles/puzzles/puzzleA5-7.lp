#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,livingroom).
in_room(1,0,bathroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).

%%%% Objects
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,bed).
contains(1,3,bed).
contains(2,0,carpet).
contains(2,1,carpet).
contains(3,2,box).
contains(3,3,statue).
contains(3,4,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).