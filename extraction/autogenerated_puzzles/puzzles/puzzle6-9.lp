#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,hallway).
in_room(3,4,hallway).
in_room(3,5,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,hallway).
in_room(4,4,hallway).
in_room(4,5,hallway).
in_room(5,0,bathroom).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,garage).
in_room(5,4,hallway).
in_room(5,5,hallway).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,3,carpet).
contains(0,4,carpet).
contains(0,5,carpet).
contains(1,2,closet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(1,5,carpet).
contains(2,1,statue).
contains(2,2,closet).
contains(2,3,carpet).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,5,bed).
contains(5,0,box).
contains(5,1,bed).
contains(5,4,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).