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
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(1,4,bedroom).
in_room(1,5,hallway).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,hallway).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,garage).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,livingroom).
in_room(4,3,bedroom).
in_room(4,4,kitchen).
in_room(4,5,garage).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,garage).

%%%% Objects
object(sofa).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,3,sofa).
contains(0,4,sofa).
contains(1,2,closet).
contains(1,3,closet).
contains(2,0,bed).
contains(2,3,closet).
contains(2,4,closet).
contains(3,0,bed).
contains(3,3,box).
contains(4,1,closet).
contains(4,5,sofa).
contains(5,1,closet).
contains(5,5,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
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