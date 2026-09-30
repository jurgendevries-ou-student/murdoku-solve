#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,kitchen).
in_room(0,3,livingroom).
in_room(0,4,livingroom).
in_room(0,5,livingroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,kitchen).
in_room(1,5,kitchen).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,kitchen).
in_room(2,5,kitchen).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,bedroom).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,bedroom).
in_room(5,1,kitchen).
in_room(5,2,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(1,4,box).
contains(2,3,sofa).
contains(2,5,carpet).
contains(3,0,bed).
contains(3,1,sofa).
contains(3,3,sofa).
contains(3,4,sofa).
contains(3,5,carpet).
contains(4,1,sofa).
contains(4,4,sofa).
contains(4,5,carpet).
contains(5,0,bed).
contains(5,2,statue).
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
victim(victoria).
female(victoria).