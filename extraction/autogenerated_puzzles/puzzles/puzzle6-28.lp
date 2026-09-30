#const n = 5.
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
in_room(0,5,livingroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,livingroom).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,livingroom).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,3,sofa).
contains(0,4,sofa).
contains(2,2,carpet).
contains(2,3,statue).
contains(2,4,closet).
contains(3,2,bed).
contains(3,3,box).
contains(3,4,closet).
contains(4,1,box).
contains(5,1,closet).
contains(5,2,closet).
contains(5,4,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(edward).
male(edward).
victim(victor).
male(victor).