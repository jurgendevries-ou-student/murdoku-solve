#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,livingroom).
in_room(0,4,bedroom).
in_room(1,0,bathroom).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,bathroom).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,bathroom).
in_room(3,1,kitchen).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).

%%%% Objects
object(chair).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,box).
contains(1,0,statue).
contains(1,1,closet).
contains(1,2,closet).
contains(3,2,chair).
contains(3,3,chair).
contains(4,0,closet).
contains(4,1,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).