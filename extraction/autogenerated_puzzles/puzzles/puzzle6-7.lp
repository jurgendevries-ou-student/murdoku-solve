#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,livingroom).
in_room(0,5,kitchen).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,hallway).
in_room(2,1,bathroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,hallway).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bedroom).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,hallway).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,bathroom).
in_room(4,4,bathroom).
in_room(4,5,kitchen).
in_room(5,0,bathroom).
in_room(5,1,bathroom).
in_room(5,2,bathroom).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,statue).
contains(0,1,box).
contains(0,2,chair).
contains(1,2,closet).
contains(1,4,chair).
contains(2,0,statue).
contains(2,2,closet).
contains(2,4,sofa).
contains(3,4,sofa).
contains(4,1,carpet).
contains(4,2,carpet).
contains(4,3,carpet).
contains(4,4,closet).
contains(5,1,carpet).
contains(5,2,carpet).
contains(5,3,carpet).
contains(5,4,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victor).
male(victor).