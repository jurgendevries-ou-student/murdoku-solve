#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,2,carpet).
contains(0,3,carpet).
contains(0,4,carpet).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,0,carpet).
contains(2,1,carpet).
contains(3,1,box).
contains(3,3,closet).
contains(3,4,closet).
contains(4,0,chair).
contains(4,3,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victoria).
female(victoria).