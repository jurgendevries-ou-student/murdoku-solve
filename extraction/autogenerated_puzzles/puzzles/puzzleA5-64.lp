#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,hallway).
in_room(0,1,hallway).
in_room(0,2,hallway).
in_room(0,3,bathroom).
in_room(0,4,bedroom).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,hallway).
in_room(1,3,bathroom).
in_room(1,4,bedroom).
in_room(2,0,hallway).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,bedroom).
in_room(3,0,livingroom).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,livingroom).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,3,closet).
contains(1,1,sofa).
contains(1,2,sofa).
contains(1,3,closet).
contains(1,4,sofa).
contains(2,4,sofa).
contains(3,2,carpet).
contains(3,3,carpet).
contains(3,4,bed).
contains(4,1,chair).
contains(4,2,carpet).
contains(4,3,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).