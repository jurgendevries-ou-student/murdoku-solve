#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,kitchen).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,kitchen).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,kitchen).
in_room(3,1,kitchen).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,bedroom).

%%%% Objects
object(carpet).
object(chair).
object(box).
can_not_be_occupied(box).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,4,closet).
contains(0,5,closet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(1,3,carpet).
contains(1,4,box).
contains(2,1,closet).
contains(2,2,closet).
contains(3,1,chair).
contains(4,0,chair).
contains(4,3,carpet).
contains(4,4,carpet).
contains(4,5,carpet).
contains(5,4,statue).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victor).
male(victor).