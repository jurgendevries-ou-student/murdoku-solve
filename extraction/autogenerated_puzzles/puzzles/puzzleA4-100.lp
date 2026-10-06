#const n = 3.
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
in_room(1,0,livingroom).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,kitchen).
in_room(2,3,bathroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,kitchen).
in_room(3,3,bathroom).

%%%% Objects
object(sofa).
object(closet).
can_not_be_occupied(closet).
contains(0,0,closet).
contains(0,1,closet).
contains(1,1,closet).
contains(1,2,closet).
contains(2,2,sofa).
contains(2,3,closet).
contains(3,2,sofa).
contains(3,3,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).