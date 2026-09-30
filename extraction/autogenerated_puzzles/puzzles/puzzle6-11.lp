#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,hallway).
in_room(0,1,livingroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,hallway).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,garage).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,garage).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,garage).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,closet).
contains(0,3,closet).
contains(0,5,bed).
contains(1,1,carpet).
contains(1,2,carpet).
contains(2,0,chair).
contains(2,1,carpet).
contains(2,2,carpet).
contains(3,0,statue).
contains(3,2,chair).
contains(4,0,bed).
contains(4,5,chair).
contains(5,2,chair).

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
victim(victoria).
female(victoria).