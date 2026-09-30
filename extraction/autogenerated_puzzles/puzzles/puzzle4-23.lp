#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,livingroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,livingroom).
in_room(3,3,livingroom).

%%%% Objects
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,1,bed).
contains(1,0,closet).
contains(1,1,closet).
contains(2,0,statue).
contains(3,2,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).