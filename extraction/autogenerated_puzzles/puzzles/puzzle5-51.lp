#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,bedroom).

%%%% Objects
object(carpet).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,1,box).
contains(1,4,carpet).
contains(2,0,closet).
contains(2,2,statue).
contains(3,0,closet).
contains(3,2,statue).
contains(4,0,statue).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victoria).
female(victoria).