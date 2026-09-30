#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,kitchen).
in_room(3,0,bathroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,kitchen).
in_room(4,0,bathroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,sofa).
contains(0,1,sofa).
contains(0,3,closet).
contains(1,0,sofa).
contains(1,1,sofa).
contains(1,3,closet).
contains(2,2,sofa).
contains(2,3,sofa).
contains(4,2,statue).
contains(4,3,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).