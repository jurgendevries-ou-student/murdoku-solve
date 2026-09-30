#const n = 4.
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
in_room(0,3,kitchen).
in_room(0,4,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,bathroom).
in_room(2,0,livingroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,kitchen).
in_room(2,4,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).
in_room(3,4,hallway).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,hallway).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,1,bed).
contains(1,0,closet).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,bed).
contains(3,3,bed).
contains(3,4,chair).
contains(4,0,carpet).
contains(4,1,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).