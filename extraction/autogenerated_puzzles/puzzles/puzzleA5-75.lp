#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,livingroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,livingroom).
in_room(2,0,kitchen).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(3,0,kitchen).
in_room(3,1,bathroom).
in_room(3,2,hallway).
in_room(3,3,hallway).
in_room(3,4,hallway).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,hallway).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,1,sofa).
contains(0,4,sofa).
contains(1,1,sofa).
contains(1,4,sofa).
contains(2,1,sofa).
contains(2,2,sofa).
contains(4,0,chair).
contains(4,1,statue).
contains(4,4,bed).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).