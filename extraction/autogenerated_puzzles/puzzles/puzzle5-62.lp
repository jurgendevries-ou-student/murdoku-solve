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
in_room(1,0,kitchen).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,kitchen).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
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
object(box).
can_not_be_occupied(box).
object(closet).
can_not_be_occupied(closet).
contains(0,1,carpet).
contains(0,2,carpet).
contains(0,3,carpet).
contains(0,4,box).
contains(1,0,box).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(2,2,carpet).
contains(2,3,carpet).
contains(2,4,box).
contains(3,2,carpet).
contains(3,3,carpet).
contains(4,0,closet).
contains(4,1,closet).
contains(4,2,carpet).
contains(4,3,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).