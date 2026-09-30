#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,hallway).
in_room(0,1,hallway).
in_room(0,2,hallway).
in_room(0,3,hallway).
in_room(0,4,hallway).
in_room(0,5,hallway).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,hallway).
in_room(1,3,hallway).
in_room(1,4,hallway).
in_room(1,5,hallway).
in_room(2,0,kitchen).
in_room(2,1,hallway).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,hallway).
in_room(2,5,kitchen).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,garage).
in_room(4,4,livingroom).
in_room(4,5,bedroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,garage).
in_room(5,3,garage).
in_room(5,4,livingroom).
in_room(5,5,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(0,1,carpet).
contains(0,2,carpet).
contains(0,3,sofa).
contains(0,4,sofa).
contains(1,0,sofa).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,4,box).
contains(2,1,carpet).
contains(3,2,box).
contains(4,1,bed).
contains(4,2,statue).
contains(5,3,chair).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victor).
male(victor).