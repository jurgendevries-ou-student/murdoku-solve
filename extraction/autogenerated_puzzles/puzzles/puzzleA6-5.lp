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
in_room(0,3,bedroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,hallway).
in_room(5,1,hallway).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,bed).
contains(1,3,box).
contains(2,4,closet).
contains(2,5,closet).
contains(3,0,statue).
contains(3,2,chair).
contains(4,1,chair).
contains(4,2,closet).
contains(4,3,closet).
contains(4,4,chair).
contains(5,0,closet).
contains(5,1,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).