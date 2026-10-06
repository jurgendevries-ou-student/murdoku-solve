#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,kitchen).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bedroom).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,bathroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,2,carpet).
contains(0,3,carpet).
contains(1,0,closet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(2,1,carpet).
contains(2,2,carpet).
contains(2,5,bed).
contains(3,1,carpet).
contains(3,2,carpet).
contains(3,4,sofa).
contains(3,5,sofa).
contains(4,5,statue).
contains(5,0,bed).
contains(5,1,box).
contains(5,2,sofa).
contains(5,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
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