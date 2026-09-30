#const n = 5.
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
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,hallway).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,hallway).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,hallway).
in_room(5,1,livingroom).
in_room(5,2,hallway).
in_room(5,3,hallway).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,3,carpet).
contains(0,4,carpet).
contains(0,5,carpet).
contains(1,0,closet).
contains(1,1,closet).
contains(1,3,sofa).
contains(1,4,sofa).
contains(2,1,bed).
contains(2,4,sofa).
contains(3,4,sofa).
contains(4,0,statue).
contains(4,3,chair).
contains(4,4,carpet).
contains(4,5,carpet).
contains(5,1,bed).
contains(5,4,carpet).
contains(5,5,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).