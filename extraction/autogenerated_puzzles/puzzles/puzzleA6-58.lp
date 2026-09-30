#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,bathroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bathroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(chair).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,sofa).
contains(1,1,chair).
contains(1,3,sofa).
contains(2,0,box).
contains(3,0,closet).
contains(3,4,statue).
contains(4,0,closet).
contains(4,3,box).
contains(5,1,box).
contains(5,3,chair).
contains(5,4,chair).

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