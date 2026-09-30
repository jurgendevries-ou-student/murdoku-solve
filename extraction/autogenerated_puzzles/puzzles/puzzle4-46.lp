#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(box).
can_not_be_occupied(box).
contains(0,0,chair).
contains(0,2,chair).
contains(1,0,sofa).
contains(1,1,sofa).
contains(3,1,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victor).
male(victor).