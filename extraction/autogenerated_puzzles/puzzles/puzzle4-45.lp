#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,kitchen).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(closet).
can_not_be_occupied(closet).
contains(0,3,sofa).
contains(1,3,sofa).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,carpet).
contains(3,2,closet).
contains(3,3,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).