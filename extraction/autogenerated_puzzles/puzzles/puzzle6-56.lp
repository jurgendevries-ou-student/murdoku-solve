#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,carpet).
contains(0,1,carpet).
contains(0,2,carpet).
contains(1,1,bed).
contains(1,2,bed).
contains(1,4,box).
contains(2,3,statue).
contains(3,2,closet).
contains(3,3,closet).
contains(4,4,statue).
contains(4,5,bed).
contains(5,5,bed).

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