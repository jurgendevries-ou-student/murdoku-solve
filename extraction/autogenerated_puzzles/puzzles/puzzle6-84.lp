#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,hallway).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,hallway).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,hallway).
in_room(2,1,hallway).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,hallway).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,hallway).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,hallway).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,hallway).
in_room(5,1,hallway).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,statue).
contains(1,0,sofa).
contains(1,2,chair).
contains(2,0,sofa).
contains(2,2,bed).
contains(2,4,closet).
contains(3,0,statue).
contains(3,1,bed).
contains(3,4,closet).
contains(4,0,sofa).
contains(4,1,closet).
contains(5,0,sofa).
contains(5,1,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).