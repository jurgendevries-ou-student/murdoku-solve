#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,kitchen).
in_room(0,1,kitchen).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(1,0,kitchen).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bedroom).
in_room(2,0,livingroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(3,0,livingroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(carpet).
object(bed).
object(box).
can_not_be_occupied(box).
contains(1,3,carpet).
contains(2,3,carpet).
contains(3,1,bed).
contains(3,2,box).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victor).
male(victor).