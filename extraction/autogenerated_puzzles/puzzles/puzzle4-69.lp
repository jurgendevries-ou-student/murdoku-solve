#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,kitchen).
in_room(1,0,bedroom).
in_room(1,1,livingroom).
in_room(1,2,livingroom).
in_room(1,3,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,kitchen).
in_room(3,0,bedroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,kitchen).

%%%% Objects
object(chair).
object(statue).
can_not_be_occupied(statue).
contains(0,2,chair).
contains(0,3,statue).
contains(1,2,chair).
contains(1,3,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
victim(victoria).
female(victoria).