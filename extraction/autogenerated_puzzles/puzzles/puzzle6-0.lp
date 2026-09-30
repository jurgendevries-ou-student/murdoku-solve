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
in_room(0,2,kitchen).
in_room(0,3,kitchen).
in_room(0,4,kitchen).
in_room(0,5,livingroom).
in_room(1,0,hallway).
in_room(1,1,hallway).
in_room(1,2,kitchen).
in_room(1,3,kitchen).
in_room(1,4,livingroom).
in_room(1,5,livingroom).
in_room(2,0,bedroom).
in_room(2,1,hallway).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,livingroom).
in_room(2,5,livingroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(3,2,kitchen).
in_room(3,3,livingroom).
in_room(3,4,livingroom).
in_room(3,5,livingroom).
in_room(4,0,bedroom).
in_room(4,1,bathroom).
in_room(4,2,garage).
in_room(4,3,livingroom).
in_room(4,4,livingroom).
in_room(4,5,livingroom).
in_room(5,0,bedroom).
in_room(5,1,bathroom).
in_room(5,2,garage).
in_room(5,3,livingroom).
in_room(5,4,livingroom).
in_room(5,5,livingroom).

%%%% Objects
object(chair).
object(bed).
object(statue).
can_not_be_occupied(statue).
object(closet).
can_not_be_occupied(closet).
contains(0,0,bed).
contains(0,3,closet).
contains(0,4,closet).
contains(1,0,chair).
contains(1,2,statue).
contains(1,5,statue).
contains(2,2,closet).
contains(2,3,closet).
contains(3,0,statue).
contains(4,3,statue).
contains(4,5,closet).
contains(5,5,closet).

%%%% Suspects and victims
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(edward).
male(edward).
victim(victor).
male(victor).