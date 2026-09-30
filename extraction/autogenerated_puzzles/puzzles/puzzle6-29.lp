#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,kitchen).
in_room(3,3,kitchen).
in_room(3,4,bedroom).
in_room(3,5,kitchen).
in_room(4,0,kitchen).
in_room(4,1,kitchen).
in_room(4,2,kitchen).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,kitchen).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,0,sofa).
contains(0,2,box).
contains(0,5,box).
contains(1,0,sofa).
contains(1,1,bed).
contains(2,1,statue).
contains(2,4,box).
contains(2,5,box).
contains(5,3,statue).
contains(5,4,bed).

%%%% Suspects and victims
suspect(alice).
female(alice).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victor).
male(victor).