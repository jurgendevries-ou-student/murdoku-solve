#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,3,closet).
contains(0,4,closet).
contains(1,0,chair).
contains(1,4,bed).
contains(3,2,statue).
contains(3,3,box).
contains(4,1,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).