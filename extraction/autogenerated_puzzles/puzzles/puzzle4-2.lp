#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bedroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).

%%%% Objects
object(sofa).
object(chair).
object(box).
can_not_be_occupied(box).
contains(0,1,chair).
contains(0,3,box).
contains(3,1,sofa).
contains(3,2,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).