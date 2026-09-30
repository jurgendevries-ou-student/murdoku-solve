#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,bedroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,hallway).
in_room(4,4,bathroom).

%%%% Objects
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,3,bed).
contains(1,3,bed).
contains(1,4,carpet).
contains(2,2,box).
contains(2,4,carpet).
contains(3,0,closet).
contains(3,1,closet).
contains(4,0,carpet).
contains(4,1,carpet).
contains(4,2,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).