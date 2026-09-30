#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(1,0,kitchen).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,livingroom).
in_room(2,0,kitchen).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,1,bed).
contains(0,3,carpet).
contains(1,2,chair).
contains(1,3,carpet).
contains(2,2,closet).
contains(3,2,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
victim(victor).
male(victor).