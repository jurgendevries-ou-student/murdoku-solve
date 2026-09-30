#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).

%%%% Objects
object(carpet).
object(chair).
object(bed).
contains(0,0,carpet).
contains(0,1,carpet).
contains(0,2,carpet).
contains(0,3,chair).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(3,0,bed).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).