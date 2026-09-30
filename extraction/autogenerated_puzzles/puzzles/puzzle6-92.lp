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
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,kitchen).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,bedroom).
in_room(1,5,bedroom).
in_room(2,0,kitchen).
in_room(2,1,garage).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,garage).
in_room(3,1,garage).
in_room(3,2,bedroom).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,garage).
in_room(4,1,garage).
in_room(4,2,bedroom).
in_room(4,3,bedroom).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,livingroom).
in_room(5,1,livingroom).
in_room(5,2,bedroom).
in_room(5,3,bedroom).
in_room(5,4,bedroom).
in_room(5,5,hallway).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
contains(0,0,sofa).
contains(0,1,sofa).
contains(0,3,sofa).
contains(1,1,statue).
contains(1,2,bed).
contains(1,3,sofa).
contains(2,2,sofa).
contains(2,3,sofa).
contains(3,3,carpet).
contains(3,4,carpet).
contains(3,5,carpet).
contains(4,1,chair).
contains(4,3,sofa).
contains(4,4,sofa).
contains(4,5,sofa).
contains(5,3,sofa).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
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