#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,kitchen).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(2,0,bedroom).
in_room(2,1,hallway).
in_room(2,2,hallway).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(3,0,bedroom).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(4,0,bedroom).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,hallway).
in_room(4,4,bathroom).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(1,0,sofa).
contains(1,4,statue).
contains(2,0,box).
contains(3,2,statue).
contains(3,3,sofa).
contains(3,4,sofa).
contains(4,4,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).