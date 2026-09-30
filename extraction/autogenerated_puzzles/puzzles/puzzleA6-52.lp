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
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,hallway).
in_room(0,5,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,bathroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,bathroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,livingroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,livingroom).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(chair).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,1,closet).
contains(1,1,closet).
contains(2,2,statue).
contains(3,3,statue).
contains(3,5,sofa).
contains(4,0,statue).
contains(4,4,statue).
contains(4,5,sofa).
contains(5,2,box).
contains(5,3,chair).
contains(5,5,box).

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