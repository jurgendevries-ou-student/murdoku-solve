#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(1,5,bathroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,hallway).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,2,box).
contains(0,3,closet).
contains(0,4,closet).
contains(1,4,box).
contains(2,3,bed).
contains(2,5,closet).
contains(3,5,closet).
contains(4,0,chair).
contains(4,1,bed).
contains(5,0,closet).
contains(5,1,closet).
contains(5,5,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
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