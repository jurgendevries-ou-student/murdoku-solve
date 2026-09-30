#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bathroom).
in_room(1,4,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
contains(0,2,chair).
contains(1,0,sofa).
contains(1,4,carpet).
contains(2,0,sofa).
contains(2,4,carpet).
contains(3,2,sofa).
contains(4,0,chair).
contains(4,2,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).