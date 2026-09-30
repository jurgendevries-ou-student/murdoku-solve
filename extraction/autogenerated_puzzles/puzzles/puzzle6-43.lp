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
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,kitchen).
in_room(3,5,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,kitchen).
in_room(4,5,bedroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,bed).
contains(0,1,sofa).
contains(0,4,closet).
contains(0,5,closet).
contains(1,1,sofa).
contains(1,3,bed).
contains(2,5,sofa).
contains(3,0,closet).
contains(3,5,sofa).
contains(4,0,closet).
contains(4,1,statue).
contains(4,4,chair).
contains(5,0,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).