#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,hallway).
in_room(0,1,hallway).
in_room(0,2,hallway).
in_room(0,3,hallway).
in_room(0,4,bathroom).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,hallway).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(2,0,kitchen).
in_room(2,1,hallway).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(3,0,kitchen).
in_room(3,1,hallway).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,bedroom).
in_room(4,0,kitchen).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,1,closet).
contains(1,1,carpet).
contains(1,4,chair).
contains(2,1,carpet).
contains(2,2,carpet).
contains(2,3,carpet).
contains(3,0,chair).
contains(3,1,carpet).
contains(3,2,carpet).
contains(3,3,carpet).
contains(4,2,carpet).
contains(4,3,carpet).
contains(4,4,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).