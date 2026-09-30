#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,bathroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).

%%%% Objects
object(carpet).
object(bed).
object(box).
can_not_be_occupied(box).
contains(0,2,bed).
contains(0,3,box).
contains(2,0,box).
contains(2,3,carpet).
contains(3,3,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victoria).
female(victoria).