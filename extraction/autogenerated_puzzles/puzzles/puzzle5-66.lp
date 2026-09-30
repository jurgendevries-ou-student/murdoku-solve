#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
in_room(0,0,livingroom).
in_room(0,1,livingroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,0,bed).
contains(0,2,carpet).
contains(0,3,carpet).
contains(0,4,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,1,bed).
contains(2,2,sofa).
contains(2,3,sofa).
contains(3,0,sofa).
contains(4,0,sofa).
contains(4,4,statue).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
victim(victor).
male(victor).