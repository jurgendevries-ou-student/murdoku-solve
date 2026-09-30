#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,livingroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,livingroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,kitchen).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,1,closet).
contains(0,2,closet).
contains(0,4,bed).
contains(1,1,sofa).
contains(1,3,carpet).
contains(1,4,carpet).
contains(1,5,carpet).
contains(2,1,sofa).
contains(2,3,carpet).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,1,sofa).
contains(3,2,sofa).
contains(3,3,carpet).
contains(3,4,carpet).
contains(3,5,carpet).
contains(4,4,sofa).
contains(5,3,box).
contains(5,4,sofa).
contains(5,5,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).