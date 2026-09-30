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
in_room(0,3,livingroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,statue).
contains(0,1,bed).
contains(2,5,statue).
contains(3,0,carpet).
contains(3,2,statue).
contains(3,3,closet).
contains(3,4,closet).
contains(4,0,carpet).
contains(4,2,bed).
contains(4,3,sofa).
contains(5,0,carpet).
contains(5,2,bed).
contains(5,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).