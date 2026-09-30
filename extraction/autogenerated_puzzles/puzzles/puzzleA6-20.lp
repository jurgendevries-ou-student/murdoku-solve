#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,bedroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,bedroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,bedroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).
in_room(4,5,bedroom).
in_room(5,0,bathroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,0,bed).
contains(0,4,bed).
contains(1,1,box).
contains(1,2,closet).
contains(1,3,closet).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,closet).
contains(2,3,closet).
contains(2,4,chair).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,4,closet).
contains(4,0,carpet).
contains(4,1,carpet).
contains(4,3,chair).
contains(4,4,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
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