#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,livingroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,hallway).
in_room(2,3,hallway).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bathroom).

%%%% Objects
object(chair).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,1,box).
contains(0,2,chair).
contains(1,3,statue).
contains(1,5,chair).
contains(2,4,chair).
contains(3,5,statue).
contains(4,4,box).
contains(5,3,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victor).
male(victor).