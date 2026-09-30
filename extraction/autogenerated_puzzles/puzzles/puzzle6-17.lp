#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,bedroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,hallway).
in_room(2,4,hallway).
in_room(2,5,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,garage).
in_room(4,4,garage).
in_room(4,5,garage).
in_room(5,0,garage).
in_room(5,1,garage).
in_room(5,2,garage).
in_room(5,3,garage).
in_room(5,4,garage).
in_room(5,5,garage).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,5,closet).
contains(1,3,bed).
contains(1,4,box).
contains(1,5,closet).
contains(2,0,box).
contains(2,1,chair).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,carpet).
contains(3,4,sofa).
contains(3,5,sofa).
contains(4,3,carpet).
contains(4,4,carpet).
contains(4,5,carpet).
contains(5,1,carpet).
contains(5,3,carpet).
contains(5,4,carpet).
contains(5,5,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victoria).
female(victoria).