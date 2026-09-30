#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,bedroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bedroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).

%%%% Objects
object(carpet).
object(bed).
contains(1,0,carpet).
contains(1,3,bed).
contains(2,0,carpet).
contains(2,1,bed).
contains(2,3,carpet).
contains(3,0,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victor).
male(victor).