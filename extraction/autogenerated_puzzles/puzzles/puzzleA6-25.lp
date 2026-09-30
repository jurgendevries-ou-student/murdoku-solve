#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,bedroom).
in_room(1,1,kitchen).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,kitchen).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,garage).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,kitchen).
in_room(3,1,garage).
in_room(3,2,garage).
in_room(3,3,garage).
in_room(3,4,garage).
in_room(3,5,hallway).
in_room(4,0,kitchen).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,garage).
in_room(4,5,hallway).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,hallway).
in_room(5,5,hallway).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,box).
contains(0,2,sofa).
contains(0,3,sofa).
contains(0,4,bed).
contains(0,5,statue).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,0,sofa).
contains(3,0,sofa).
contains(3,3,statue).
contains(4,2,sofa).
contains(4,3,chair).
contains(5,2,sofa).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).