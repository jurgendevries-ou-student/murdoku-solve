#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(chair).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,1,closet).
contains(1,1,closet).
contains(1,2,closet).
contains(1,3,sofa).
contains(1,4,sofa).
contains(1,5,chair).
contains(2,1,closet).
contains(3,1,closet).
contains(3,3,statue).
contains(5,0,chair).
contains(5,1,chair).
contains(5,5,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).