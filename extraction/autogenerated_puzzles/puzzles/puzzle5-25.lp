#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,bathroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,kitchen).
in_room(1,4,bathroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,hallway).
in_room(2,4,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,hallway).
in_room(3,4,hallway).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,hallway).
in_room(4,4,hallway).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,0,sofa).
contains(0,1,sofa).
contains(0,2,chair).
contains(0,3,sofa).
contains(1,0,statue).
contains(1,3,sofa).
contains(3,3,bed).
contains(4,1,bed).

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