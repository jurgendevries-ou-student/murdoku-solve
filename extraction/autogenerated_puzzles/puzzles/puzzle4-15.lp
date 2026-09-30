#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,bedroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,bedroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).

%%%% Objects
object(carpet).
object(chair).
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,1,closet).
contains(0,2,closet).
contains(0,3,box).
contains(1,0,chair).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).