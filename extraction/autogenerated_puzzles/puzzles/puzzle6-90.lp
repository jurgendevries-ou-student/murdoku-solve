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
in_room(0,5,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(2,5,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,kitchen).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,bed).
contains(0,1,closet).
contains(0,2,closet).
contains(1,5,bed).
contains(3,1,statue).
contains(3,2,sofa).
contains(3,3,chair).
contains(4,2,sofa).
contains(4,3,bed).
contains(4,4,carpet).
contains(5,3,closet).
contains(5,4,closet).

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