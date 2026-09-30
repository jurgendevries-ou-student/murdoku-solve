#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,kitchen).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,hallway).
in_room(1,5,livingroom).
in_room(2,0,bedroom).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(2,5,hallway).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
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
contains(0,1,sofa).
contains(0,2,sofa).
contains(0,3,closet).
contains(0,4,closet).
contains(1,4,bed).
contains(2,2,box).
contains(2,4,chair).
contains(3,1,carpet).
contains(4,1,carpet).
contains(5,0,chair).
contains(5,1,box).
contains(5,4,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).