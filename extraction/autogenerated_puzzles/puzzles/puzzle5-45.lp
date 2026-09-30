#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
contains(0,1,carpet).
contains(0,4,carpet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,2,carpet).
contains(2,3,carpet).
contains(2,4,chair).
contains(3,1,bed).
contains(4,3,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).