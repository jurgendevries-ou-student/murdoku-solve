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
in_room(1,0,bathroom).
in_room(1,1,kitchen).
in_room(1,2,bathroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,1,bed).
contains(1,2,carpet).
contains(1,4,box).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,carpet).
contains(2,3,box).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,carpet).
contains(4,0,carpet).
contains(4,1,carpet).
contains(4,2,closet).
contains(4,4,bed).
contains(5,0,closet).
contains(5,1,closet).
contains(5,2,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).