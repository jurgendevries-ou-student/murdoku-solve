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
in_room(0,2,kitchen).
in_room(0,3,garage).
in_room(0,4,garage).
in_room(0,5,garage).
in_room(1,0,kitchen).
in_room(1,1,garage).
in_room(1,2,garage).
in_room(1,3,garage).
in_room(1,4,garage).
in_room(1,5,garage).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,garage).
in_room(2,3,hallway).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,hallway).
in_room(3,4,hallway).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,hallway).
in_room(4,4,hallway).
in_room(4,5,livingroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(5,2,hallway).
in_room(5,3,hallway).
in_room(5,4,hallway).
in_room(5,5,hallway).

%%%% Objects
object(sofa).
object(bed).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,1,bed).
contains(0,3,sofa).
contains(0,4,sofa).
contains(1,2,closet).
contains(1,4,sofa).
contains(1,5,sofa).
contains(2,0,closet).
contains(2,1,closet).
contains(2,2,closet).
contains(2,5,box).
contains(3,4,sofa).
contains(4,0,closet).
contains(4,1,closet).
contains(4,4,sofa).
contains(5,4,sofa).
contains(5,5,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).