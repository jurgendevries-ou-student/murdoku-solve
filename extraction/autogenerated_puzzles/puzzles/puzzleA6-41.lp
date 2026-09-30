#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(0,5,hallway).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(1,5,hallway).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,hallway).
in_room(2,4,livingroom).
in_room(2,5,garage).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,garage).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
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
contains(0,1,closet).
contains(0,2,closet).
contains(0,4,chair).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,5,statue).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,4,bed).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,closet).
contains(3,3,closet).
contains(4,2,closet).
contains(4,4,sofa).
contains(4,5,sofa).
contains(5,2,closet).
contains(5,4,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).