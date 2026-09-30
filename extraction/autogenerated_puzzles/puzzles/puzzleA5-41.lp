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
in_room(0,2,bedroom).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,hallway).
in_room(2,4,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,bathroom).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,livingroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,0,sofa).
contains(0,1,sofa).
contains(0,3,sofa).
contains(0,4,sofa).
contains(1,0,closet).
contains(1,3,bed).
contains(2,0,closet).
contains(2,4,bed).
contains(4,2,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).