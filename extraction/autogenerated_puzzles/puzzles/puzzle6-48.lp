#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,bathroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,bedroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,kitchen).
in_room(3,3,livingroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,hallway).
in_room(4,5,bathroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,hallway).
in_room(5,5,hallway).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,3,box).
contains(1,0,closet).
contains(1,2,bed).
contains(1,3,closet).
contains(1,4,closet).
contains(2,1,sofa).
contains(2,2,sofa).
contains(3,0,closet).
contains(3,5,chair).
contains(4,0,closet).
contains(4,2,sofa).
contains(4,3,sofa).
contains(5,0,carpet).
contains(5,1,carpet).
contains(5,2,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
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