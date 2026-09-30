#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,hallway).
in_room(0,1,hallway).
in_room(0,2,hallway).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,garage).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,hallway).
in_room(1,3,kitchen).
in_room(1,4,garage).
in_room(1,5,garage).
in_room(2,0,livingroom).
in_room(2,1,bathroom).
in_room(2,2,bathroom).
in_room(2,3,bathroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,livingroom).
in_room(3,1,livingroom).
in_room(3,2,livingroom).
in_room(3,3,livingroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,livingroom).
in_room(4,1,livingroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,livingroom).
in_room(4,5,bedroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,livingroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,1,carpet).
contains(0,2,carpet).
contains(0,5,box).
contains(1,0,bed).
contains(1,1,carpet).
contains(1,2,carpet).
contains(2,0,closet).
contains(3,0,closet).
contains(3,1,statue).
contains(4,0,box).
contains(4,2,box).
contains(5,1,statue).
contains(5,3,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(edward).
male(edward).
victim(victor).
male(victor).