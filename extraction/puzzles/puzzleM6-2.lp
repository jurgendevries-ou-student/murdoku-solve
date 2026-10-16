%% Grid
#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(bedroom).
room(bathroom).
room(living).
room(closet).

%% Which cells are in the same room
in_room(0,0,bedroom).
in_room(1,0,bedroom).
in_room(2,0,bedroom).
in_room(2,1,bedroom).
in_room(1,1,bedroom).
in_room(0,1,bedroom).
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(0,2,bathroom).
in_room(1,2,bathroom).
in_room(2,2,bathroom).
in_room(3,2,bathroom).
in_room(3,3,bathroom).
in_room(2,3,bathroom).
in_room(1,3,bathroom).
in_room(0,3,bathroom).
in_room(4,0,living).
in_room(5,0,living).
in_room(4,1,living).
in_room(5,1,living).
in_room(4,2,living).
in_room(5,2,living).
in_room(4,3,living).
in_room(5,3,living).
in_room(4,4,living).
in_room(5,4,living).
in_room(4,5,living).
in_room(5,5,living).
in_room(0,4,closet).
in_room(0,5,closet).
in_room(1,4,closet).
in_room(1,5,closet).
in_room(2,4,closet).
in_room(2,5,closet).
in_room(3,4,closet).
in_room(3,5,closet).

%% objects
object(chair).
object(bed).
object(table).
object(plant).
object(tv).

%% object locations
contains(1,0,chair).
contains(2,0,bed).
contains(2,1,bed).
contains(2,4,bed).
contains(2,5,bed).
contains(0,2,table).
contains(5,3,table).
contains(4,0,plant).
contains(1,5,plant).
contains(0,4,tv).
contains(5,0,tv).

%% persons
suspect(alice).
female(alice).
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

% persons with time steps assigned
suspect(1,alice).
female(alice).
suspect(2,bernard).
male(bernard).
suspect(3,carol).
female(carol).
suspect(4,daniel).
male(daniel).
suspect(5,edward).
male(edward).
victim(6,victor).
male(victor).