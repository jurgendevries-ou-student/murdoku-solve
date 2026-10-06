#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,1,carpet).
contains(0,2,statue).
contains(0,3,carpet).
contains(0,4,carpet).
contains(1,0,chair).
contains(1,1,carpet).
contains(1,3,closet).
contains(1,4,closet).
contains(2,1,carpet).
contains(4,0,statue).

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