#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(chair).
object(bed).
contains(0,0,bed).
contains(1,3,chair).
contains(2,3,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).