#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,livingroom).
in_room(1,1,bedroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,box).
contains(1,3,sofa).
contains(2,0,statue).
contains(2,1,bed).
contains(2,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victor).
male(victor).