#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(2,0,bathroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(3,0,bathroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,kitchen).

%%%% Objects
object(carpet).
object(statue).
can_not_be_occupied(statue).
contains(0,1,carpet).
contains(0,2,carpet).
contains(1,1,statue).
contains(1,3,carpet).
contains(2,3,carpet).
contains(3,2,statue).
contains(3,3,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).