#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,livingroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,bathroom).
in_room(2,0,bedroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,bedroom).
in_room(2,4,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bathroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,hallway).
in_room(4,4,bathroom).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,sofa).
contains(0,3,sofa).
contains(1,2,closet).
contains(1,3,closet).
contains(2,1,closet).
contains(2,2,closet).
contains(3,0,bed).
contains(3,1,sofa).
contains(3,2,sofa).
contains(4,1,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).