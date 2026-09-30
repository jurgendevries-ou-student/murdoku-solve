#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,livingroom).
in_room(1,3,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).

%%%% Objects
object(chair).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,chair).
contains(2,1,box).
contains(2,3,chair).
contains(3,0,statue).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).