#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bathroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(3,0,kitchen).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,bedroom).

%%%% Objects
object(chair).
object(bed).
contains(0,3,chair).
contains(3,1,chair).
contains(3,3,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).