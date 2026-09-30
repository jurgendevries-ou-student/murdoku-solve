#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,bedroom).
in_room(2,3,kitchen).
in_room(3,0,bathroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,livingroom).

%%%% Objects
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,2,statue).
contains(0,3,closet).
contains(1,0,closet).
contains(1,3,closet).
contains(2,0,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(charlie).
male(charlie).
victim(victor).
male(victor).