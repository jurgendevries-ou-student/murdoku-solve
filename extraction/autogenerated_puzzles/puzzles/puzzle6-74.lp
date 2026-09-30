#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,bedroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,bedroom).
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
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,1,chair).
contains(0,3,carpet).
contains(0,4,carpet).
contains(0,5,bed).
contains(1,1,statue).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,3,carpet).
contains(2,4,carpet).
contains(3,0,box).
contains(3,1,closet).
contains(3,2,closet).
contains(3,5,statue).
contains(4,5,box).
contains(5,4,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).