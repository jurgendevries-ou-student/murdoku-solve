#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
contains(0,0,bed).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,4,bed).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,carpet).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,carpet).
contains(3,3,chair).
contains(4,0,bed).
contains(4,1,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).