#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(3,0,livingroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).

%%%% Objects
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
contains(0,0,bed).
contains(0,2,closet).
contains(1,2,closet).
contains(1,3,carpet).
contains(2,1,bed).
contains(2,3,carpet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victor).
male(victor).