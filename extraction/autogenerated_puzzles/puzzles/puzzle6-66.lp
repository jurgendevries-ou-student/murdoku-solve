#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(1,0,closet).
contains(1,1,closet).
contains(1,4,carpet).
contains(1,5,carpet).
contains(2,0,bed).
contains(2,3,statue).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,0,bed).
contains(3,1,bed).
contains(3,4,carpet).
contains(3,5,carpet).
contains(4,3,carpet).
contains(5,0,chair).
contains(5,4,sofa).
contains(5,5,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(edward).
male(edward).
victim(victor).
male(victor).