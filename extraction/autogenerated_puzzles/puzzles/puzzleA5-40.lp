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
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,hallway).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,hallway).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,bedroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,livingroom).
in_room(3,3,kitchen).
in_room(3,4,bedroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,kitchen).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(1,0,sofa).
contains(1,4,chair).
contains(2,0,chair).
contains(2,1,sofa).
contains(2,2,sofa).
contains(3,1,chair).
contains(4,2,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).