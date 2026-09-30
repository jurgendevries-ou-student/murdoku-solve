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
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,livingroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bedroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(3,0,bathroom).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(1,3,closet).
contains(2,0,closet).
contains(2,2,bed).
contains(2,3,closet).
contains(3,0,closet).
contains(3,1,statue).
contains(3,4,box).
contains(4,2,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).