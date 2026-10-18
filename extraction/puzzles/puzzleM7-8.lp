%% Grid
#const n = 6.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(jacuzzi).
room(deck).
room(living).
room(kitchen).
room(bedroom).
room(backyard).

%% Which cells are in the same room
in_room(1,4,jacuzzi).
in_room(2,4,jacuzzi).
in_room(2,5,jacuzzi).
in_room(1,5,jacuzzi).
in_room(0,3,deck).
in_room(0,4,deck).
in_room(0,5,deck).
in_room(0,6,deck).
in_room(1,6,deck).
in_room(2,6,deck).
in_room(3,6,deck).
in_room(3,5,deck).
in_room(3,4,deck).
in_room(3,3,deck).
in_room(2,3,deck).
in_room(1,3,deck).
in_room(3,0,living).
in_room(3,1,living).
in_room(3,2,living).
in_room(4,2,living).
in_room(4,1,living).
in_room(4,0,living).
in_room(5,2,living).
in_room(6,2,living).
in_room(6,3,living).
in_room(6,4,living).
in_room(5,4,living).
in_room(4,4,living).
in_room(4,3,living).
in_room(5,3,living).
in_room(4,5,kitchen).
in_room(5,5,kitchen).
in_room(6,5,kitchen).
in_room(6,6,kitchen).
in_room(5,6,kitchen).
in_room(4,6,kitchen).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(6,1,bedroom).
in_room(6,0,bedroom).
in_room(0,0,backyard).
in_room(1,0,backyard).
in_room(1,1,backyard).
in_room(0,1,backyard).
in_room(2,0,backyard).
in_room(2,1,backyard).
in_room(2,2,backyard).
in_room(0,2,backyard).
in_room(1,2,backyard).

%% objects
object(plant).
object(table).
object(chair).
object(bed).
object(tv).

can_not_be_occupied(table).
can_not_be_occupied(tv).
can_not_be_occupied(plant).

%% object locations
contains(2,0,plant).
contains(1,2,plant).
contains(5,3,plant).
contains(3,4,plant).
contains(3,1,plant).
contains(0,1,table).
contains(0,2,table).
contains(5,0,table).
contains(6,3,table).
contains(6,6,table).
contains(6,5,table).
contains(5,2,chair).
contains(5,4,chair).
contains(0,5,chair).
contains(2,6,chair).
contains(6,0,bed).
contains(6,1,bed).
contains(4,4,tv).

%% persons
suspect(alphonse).
male(alphonse).
suspect(bernard).
male(bernard).
suspect(carol).
female(carol).
suspect(daisy).
female(daisy).
suspect(emily).
female(emily).
suspect(frank).
male(frank).
victim(victoria).
female(victoria).