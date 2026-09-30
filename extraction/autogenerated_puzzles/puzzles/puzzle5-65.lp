#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(2,0,bathroom).
in_room(2,1,hallway).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,bathroom).
in_room(3,0,bathroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,bathroom).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,livingroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
contains(1,0,closet).
contains(1,1,closet).
contains(1,2,closet).
contains(2,0,closet).
contains(2,3,carpet).
contains(3,0,chair).
contains(3,3,closet).
contains(3,4,closet).
contains(4,2,sofa).
contains(4,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).