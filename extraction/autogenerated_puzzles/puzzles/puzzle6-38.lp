#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,hallway).
in_room(0,5,hallway).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,hallway).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,livingroom).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(3,4,garage).
in_room(3,5,bedroom).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,bathroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,carpet).
contains(0,1,bed).
contains(1,0,carpet).
contains(2,0,sofa).
contains(2,5,box).
contains(3,0,sofa).
contains(3,4,statue).
contains(4,1,closet).
contains(4,2,closet).
contains(4,5,bed).
contains(5,0,chair).
contains(5,1,sofa).
contains(5,2,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).