#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(carpet).
object(chair).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,3,closet).
contains(0,5,carpet).
contains(1,2,chair).
contains(1,3,closet).
contains(1,5,carpet).
contains(2,2,bed).
contains(2,3,carpet).
contains(2,4,carpet).
contains(2,5,carpet).
contains(3,4,closet).
contains(3,5,bed).
contains(4,4,closet).
contains(4,5,closet).
contains(5,3,carpet).
contains(5,4,carpet).
contains(5,5,closet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victor).
male(victor).