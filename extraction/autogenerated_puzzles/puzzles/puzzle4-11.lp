#const n = 3.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,livingroom).
in_room(2,0,bathroom).
in_room(2,1,bathroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(3,0,bathroom).
in_room(3,1,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bedroom).

%%%% Objects
object(carpet).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,carpet).
contains(0,1,carpet).
contains(0,2,statue).
contains(2,1,box).
contains(3,1,closet).
contains(3,2,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
victim(victor).
male(victor).