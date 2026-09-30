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
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,hallway).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,hallway).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bathroom).
in_room(2,5,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,garage).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,garage).

%%%% Objects
object(sofa).
object(carpet).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,statue).
contains(0,5,statue).
contains(1,0,box).
contains(1,5,box).
contains(3,0,sofa).
contains(3,1,sofa).
contains(3,2,closet).
contains(3,3,closet).
contains(4,0,closet).
contains(4,2,carpet).
contains(4,3,carpet).
contains(4,4,carpet).
contains(4,5,statue).
contains(5,0,closet).
contains(5,2,carpet).
contains(5,3,carpet).
contains(5,4,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).