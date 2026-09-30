#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
contains(0,1,bed).
contains(0,4,chair).
contains(1,0,chair).
contains(1,3,chair).
contains(3,1,carpet).
contains(3,2,carpet).
contains(4,4,bed).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).