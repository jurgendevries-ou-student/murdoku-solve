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
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bedroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bathroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
contains(0,2,chair).
contains(1,1,bed).
contains(1,2,sofa).
contains(1,3,sofa).
contains(1,4,sofa).
contains(2,0,box).
contains(2,1,sofa).
contains(2,2,sofa).
contains(3,1,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).