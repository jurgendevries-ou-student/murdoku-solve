#const n = 5.
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
in_room(0,3,livingroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,hallway).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,hallway).
in_room(2,1,hallway).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,kitchen).
in_room(2,5,bedroom).
in_room(3,0,hallway).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,livingroom).
in_room(3,4,kitchen).
in_room(3,5,bedroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,hallway).
in_room(5,1,hallway).
in_room(5,2,hallway).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,4,closet).
contains(0,5,closet).
contains(1,2,bed).
contains(1,4,carpet).
contains(1,5,chair).
contains(2,1,chair).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,5,bed).
contains(4,0,carpet).
contains(4,1,carpet).
contains(4,2,sofa).
contains(5,0,carpet).
contains(5,1,carpet).
contains(5,2,sofa).
contains(5,3,statue).

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