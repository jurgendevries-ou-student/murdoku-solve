#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bedroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(0,1,sofa).
contains(0,4,chair).
contains(0,5,box).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,0,sofa).
contains(3,1,sofa).
contains(3,3,statue).
contains(3,4,carpet).
contains(3,5,carpet).
contains(4,0,chair).
contains(4,1,closet).
contains(4,4,carpet).
contains(4,5,carpet).
contains(5,0,statue).
contains(5,1,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).