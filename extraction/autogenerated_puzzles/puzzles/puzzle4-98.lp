#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).

%%%% Objects
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
contains(0,1,chair).
contains(0,2,closet).
contains(0,3,closet).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,carpet).
contains(3,3,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victor).
male(victor).