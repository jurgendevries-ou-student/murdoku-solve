#const n = 5.
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
in_room(0,5,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,chair).
contains(0,5,chair).
contains(1,2,bed).
contains(1,3,statue).
contains(3,5,box).
contains(4,2,sofa).
contains(4,3,sofa).
contains(4,4,sofa).
contains(5,0,sofa).
contains(5,1,sofa).
contains(5,4,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
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