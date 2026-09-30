#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,livingroom).
in_room(1,3,bedroom).
in_room(2,0,kitchen).
in_room(2,1,bathroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,kitchen).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).

%%%% Objects
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,0,statue).
contains(0,3,bed).
contains(2,3,chair).
contains(3,1,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).