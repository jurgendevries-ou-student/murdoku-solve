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
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(3,0,kitchen).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).

%%%% Objects
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(1,1,chair).
contains(1,2,box).
contains(2,2,statue).
contains(3,2,bed).
contains(4,3,closet).
contains(4,4,closet).

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