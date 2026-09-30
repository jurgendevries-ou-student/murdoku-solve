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
in_room(0,1,bathroom).
in_room(0,2,kitchen).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(0,5,hallway).
in_room(1,0,livingroom).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(1,5,hallway).
in_room(2,0,garage).
in_room(2,1,garage).
in_room(2,2,kitchen).
in_room(2,3,bedroom).
in_room(2,4,hallway).
in_room(2,5,hallway).
in_room(3,0,garage).
in_room(3,1,garage).
in_room(3,2,garage).
in_room(3,3,bedroom).
in_room(3,4,hallway).
in_room(3,5,bedroom).
in_room(4,0,garage).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,garage).
in_room(5,1,bedroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,3,closet).
contains(0,4,closet).
contains(1,0,closet).
contains(2,1,statue).
contains(3,0,sofa).
contains(3,1,sofa).
contains(3,2,bed).
contains(4,1,box).
contains(4,4,sofa).
contains(4,5,sofa).
contains(5,3,closet).
contains(5,4,closet).
contains(5,5,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).