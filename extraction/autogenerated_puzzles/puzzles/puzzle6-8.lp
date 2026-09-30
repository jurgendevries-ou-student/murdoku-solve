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
in_room(0,3,bedroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,box).
contains(0,5,closet).
contains(1,2,bed).
contains(1,5,closet).
contains(2,1,bed).
contains(2,3,carpet).
contains(2,4,carpet).
contains(3,3,carpet).
contains(3,4,carpet).
contains(3,5,statue).
contains(4,5,closet).
contains(5,0,carpet).
contains(5,1,carpet).
contains(5,3,sofa).
contains(5,4,sofa).
contains(5,5,closet).

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
victim(victor).
male(victor).