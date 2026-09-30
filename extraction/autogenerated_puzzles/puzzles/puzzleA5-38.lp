#const n = 4.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bedroom).
in_room(0,1,kitchen).
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,hallway).
in_room(4,0,bathroom).
in_room(4,1,bathroom).
in_room(4,2,bathroom).
in_room(4,3,hallway).
in_room(4,4,hallway).

%%%% Objects
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,2,carpet).
contains(0,3,carpet).
contains(1,0,carpet).
contains(1,1,carpet).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,2,bed).
contains(3,0,carpet).
contains(3,1,carpet).
contains(4,1,statue).
contains(4,2,bed).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
victim(victor).
male(victor).