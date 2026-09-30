#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,hallway).
in_room(0,1,hallway).
in_room(0,2,bathroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,kitchen).
in_room(2,0,hallway).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
contains(0,1,box).
contains(1,0,box).
contains(3,0,chair).
contains(3,2,box).
contains(3,4,chair).
contains(4,0,bed).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).