#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,kitchen).
in_room(2,1,bedroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,kitchen).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,livingroom).
in_room(4,5,bathroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bathroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,chair).
contains(1,0,closet).
contains(1,2,carpet).
contains(2,0,closet).
contains(2,1,box).
contains(2,2,carpet).
contains(2,3,statue).
contains(3,3,closet).
contains(3,4,closet).
contains(4,1,bed).
contains(5,1,statue).
contains(5,4,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).