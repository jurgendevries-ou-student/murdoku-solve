#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(1,0,livingroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bathroom).

%%%% Objects
object(carpet).
object(bed).
object(box).
can_not_be_occupied(box).
contains(0,3,bed).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(2,2,box).
contains(3,0,carpet).
contains(3,1,carpet).
contains(3,2,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).