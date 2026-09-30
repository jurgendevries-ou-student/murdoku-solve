#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(2,0,kitchen).
in_room(2,1,hallway).
in_room(2,2,hallway).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(3,0,kitchen).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,hallway).
in_room(3,4,hallway).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,statue).
contains(1,0,sofa).
contains(1,2,carpet).
contains(2,0,sofa).
contains(2,1,bed).
contains(2,2,carpet).
contains(3,2,box).
contains(3,3,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).