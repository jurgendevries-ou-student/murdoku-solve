#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,kitchen).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,bathroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,hallway).
in_room(5,0,bathroom).
in_room(5,1,hallway).
in_room(5,2,hallway).
in_room(5,3,hallway).
in_room(5,4,hallway).
in_room(5,5,hallway).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,carpet).
contains(0,3,carpet).
contains(0,5,sofa).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,5,sofa).
contains(2,2,carpet).
contains(2,3,carpet).
contains(2,4,statue).
contains(2,5,bed).
contains(3,3,closet).
contains(3,4,statue).
contains(4,0,bed).
contains(4,3,closet).
contains(5,3,closet).
contains(5,4,closet).
contains(5,5,box).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).