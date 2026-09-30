#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%%%% Rooms
room(bedroom).
room(livingroom).
room(kitchen).
room(bathroom).
room(hallway).
in_room(0,0,bathroom).
in_room(0,1,bathroom).
in_room(0,2,bathroom).
in_room(0,3,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,0,livingroom).
in_room(1,1,livingroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(1,5,bathroom).
in_room(2,0,livingroom).
in_room(2,1,livingroom).
in_room(2,2,livingroom).
in_room(2,3,livingroom).
in_room(2,4,livingroom).
in_room(2,5,kitchen).
in_room(3,0,livingroom).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(3,3,kitchen).
in_room(3,4,kitchen).
in_room(3,5,kitchen).
in_room(4,0,bedroom).
in_room(4,1,hallway).
in_room(4,2,hallway).
in_room(4,3,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,0,bedroom).
in_room(5,1,hallway).
in_room(5,2,hallway).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(5,5,kitchen).

%%%% Objects
object(sofa).
object(carpet).
object(chair).
object(closet).
can_not_be_occupied(closet).
contains(0,5,sofa).
contains(1,0,carpet).
contains(1,1,carpet).
contains(1,4,chair).
contains(1,5,sofa).
contains(2,0,carpet).
contains(2,1,carpet).
contains(2,5,closet).
contains(3,1,carpet).
contains(3,2,carpet).
contains(3,3,closet).
contains(3,5,closet).
contains(4,1,carpet).
contains(4,2,carpet).
contains(4,3,closet).
contains(4,5,carpet).
contains(5,1,closet).
contains(5,2,closet).
contains(5,5,carpet).

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