#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,kitchen).
in_room(0,2,hallway).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(0,5,hallway).
in_room(1,0,bathroom).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(1,5,hallway).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,hallway).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(2,5,hallway).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,hallway).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

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
contains(1,1,closet).
contains(1,2,closet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(1,5,carpet).
contains(2,1,box).
contains(2,2,bed).
contains(2,3,carpet).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,0,chair).
contains(3,2,box).
contains(3,5,statue).
contains(4,3,closet).
contains(4,4,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).