#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bathroom).
in_room(3,0,kitchen).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,1,carpet).
contains(0,2,carpet).
contains(1,1,bed).
contains(1,3,chair).
contains(3,3,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).