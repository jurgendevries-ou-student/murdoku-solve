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
in_room(0,4,livingroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,hallway).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,hallway).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(sofa).
object(chair).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,box).
contains(0,4,box).
contains(1,0,statue).
contains(1,3,chair).
contains(4,1,chair).
contains(4,3,sofa).
contains(4,4,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).