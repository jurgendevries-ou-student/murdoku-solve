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
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,hallway).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,hallway).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,hallway).
in_room(5,1,hallway).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(1,0,box).
contains(1,1,bed).
contains(1,4,statue).
contains(1,5,closet).
contains(2,2,sofa).
contains(2,3,sofa).
contains(2,5,closet).
contains(3,4,sofa).
contains(3,5,statue).
contains(4,0,chair).
contains(4,4,sofa).
contains(5,2,statue).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
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