#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,hallway).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(1,0,kitchen).
in_room(1,1,hallway).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,bathroom).
in_room(2,0,livingroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bathroom).
in_room(3,0,livingroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(statue).
can_not_be_occupied(statue).
contains(0,2,chair).
contains(2,2,sofa).
contains(3,0,chair).
contains(3,1,statue).
contains(3,2,sofa).
contains(3,3,chair).

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