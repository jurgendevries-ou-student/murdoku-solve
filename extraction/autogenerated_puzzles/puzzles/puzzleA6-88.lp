#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,bathroom).
in_room(1,1,bathroom).
in_room(1,2,bedroom).
in_room(1,3,bedroom).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,bathroom).
in_room(2,1,garage).
in_room(2,2,bedroom).
in_room(2,3,garage).
in_room(2,4,garage).
in_room(2,5,kitchen).
in_room(3,0,garage).
in_room(3,1,garage).
in_room(3,2,garage).
in_room(3,3,garage).
in_room(3,4,garage).
in_room(3,5,garage).
in_room(4,0,livingroom).
in_room(4,1,hallway).
in_room(4,2,garage).
in_room(4,3,garage).
in_room(4,4,garage).
in_room(4,5,garage).
in_room(5,0,livingroom).
in_room(5,1,hallway).
in_room(5,2,hallway).
in_room(5,3,garage).
in_room(5,4,garage).
in_room(5,5,garage).

%%%% Objects
object(sofa).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(box).
can_not_be_occupied(box).
contains(0,3,statue).
contains(1,5,chair).
contains(2,1,statue).
contains(2,5,bed).
contains(3,0,box).
contains(3,3,sofa).
contains(3,4,sofa).
contains(4,5,bed).
contains(5,1,sofa).
contains(5,2,sofa).
contains(5,3,chair).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(charlie).
male(charlie).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
victim(victoria).
female(victoria).