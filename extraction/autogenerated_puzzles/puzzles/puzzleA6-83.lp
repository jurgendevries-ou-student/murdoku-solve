#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,hallway).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,hallway).
in_room(2,2,hallway).
in_room(2,3,garage).
in_room(2,4,garage).
in_room(2,5,livingroom).
in_room(3,0,bedroom).
in_room(3,1,garage).
in_room(3,2,garage).
in_room(3,3,garage).
in_room(3,4,garage).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,garage).
in_room(4,2,garage).
in_room(4,3,garage).
in_room(4,4,garage).
in_room(4,5,garage).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,garage).
in_room(5,3,garage).
in_room(5,4,garage).
in_room(5,5,garage).

%%%% Objects
object(sofa).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,4,bed).
contains(1,0,closet).
contains(1,4,bed).
contains(2,0,closet).
contains(2,5,statue).
contains(3,2,closet).
contains(3,3,closet).
contains(4,1,closet).
contains(4,2,closet).
contains(4,3,box).
contains(4,5,statue).
contains(5,4,sofa).
contains(5,5,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).