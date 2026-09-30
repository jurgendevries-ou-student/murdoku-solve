#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(2,0,bathroom).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(3,0,bathroom).
in_room(3,1,kitchen).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,kitchen).

%%%% Objects
object(carpet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,carpet).
contains(0,4,carpet).
contains(1,1,box).
contains(1,3,carpet).
contains(1,4,carpet).
contains(2,3,carpet).
contains(2,4,carpet).
contains(3,3,statue).
contains(3,4,carpet).
contains(4,1,box).
contains(4,3,statue).
contains(4,4,carpet).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).