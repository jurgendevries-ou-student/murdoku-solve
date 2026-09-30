#const n = 5.
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
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,bathroom).
in_room(2,5,bathroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,livingroom).
in_room(3,3,bathroom).
in_room(3,4,bathroom).
in_room(3,5,bathroom).
in_room(4,0,kitchen).
in_room(4,1,bedroom).
in_room(4,2,livingroom).
in_room(4,3,livingroom).
in_room(4,4,bathroom).
in_room(4,5,bathroom).
in_room(5,0,kitchen).
in_room(5,1,bedroom).
in_room(5,2,livingroom).
in_room(5,3,livingroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(bed).
object(closet).
can_not_be_occupied(closet).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,2,statue).
contains(0,3,box).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,2,carpet).
contains(2,2,sofa).
contains(2,3,sofa).
contains(2,4,closet).
contains(2,5,closet).
contains(3,2,box).
contains(4,1,box).
contains(4,5,bed).
contains(5,4,sofa).
contains(5,5,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victor).
male(victor).