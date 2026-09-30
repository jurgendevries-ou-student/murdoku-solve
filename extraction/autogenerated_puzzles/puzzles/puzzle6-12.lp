#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
room(garage).
in_room(0,0,kitchen).
in_room(0,1,livingroom).
in_room(0,2,livingroom).
in_room(0,3,livingroom).
in_room(0,4,bedroom).
in_room(0,5,bedroom).
in_room(1,0,kitchen).
in_room(1,1,kitchen).
in_room(1,2,kitchen).
in_room(1,3,livingroom).
in_room(1,4,livingroom).
in_room(1,5,bedroom).
in_room(2,0,hallway).
in_room(2,1,kitchen).
in_room(2,2,kitchen).
in_room(2,3,kitchen).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(3,0,hallway).
in_room(3,1,kitchen).
in_room(3,2,garage).
in_room(3,3,bedroom).
in_room(3,4,bedroom).
in_room(3,5,bedroom).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(4,2,garage).
in_room(4,3,garage).
in_room(4,4,bedroom).
in_room(4,5,bedroom).
in_room(5,0,hallway).
in_room(5,1,garage).
in_room(5,2,garage).
in_room(5,3,bathroom).
in_room(5,4,bathroom).
in_room(5,5,bathroom).

%%%% Objects
object(sofa).
object(carpet).
object(closet).
can_not_be_occupied(closet).
object(box).
can_not_be_occupied(box).
contains(0,1,box).
contains(0,2,box).
contains(0,4,sofa).
contains(0,5,sofa).
contains(1,2,closet).
contains(1,5,closet).
contains(2,0,closet).
contains(2,1,sofa).
contains(2,2,closet).
contains(2,5,closet).
contains(3,0,closet).
contains(3,1,sofa).
contains(3,4,carpet).
contains(3,5,carpet).
contains(4,4,carpet).
contains(4,5,carpet).
contains(5,3,carpet).
contains(5,4,carpet).
contains(5,5,carpet).

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
victim(victoria).
female(victoria).