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
in_room(0,3,livingroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,bathroom).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bathroom).
in_room(2,5,bedroom).
in_room(3,0,hallway).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,livingroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,hallway).
in_room(5,1,hallway).
in_room(5,2,hallway).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,5,bed).
contains(1,0,closet).
contains(1,1,closet).
contains(1,3,sofa).
contains(2,2,bed).
contains(2,3,sofa).
contains(3,0,bed).
contains(4,0,closet).
contains(4,1,closet).
contains(4,3,closet).
contains(5,1,bed).
contains(5,3,closet).
contains(5,4,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
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