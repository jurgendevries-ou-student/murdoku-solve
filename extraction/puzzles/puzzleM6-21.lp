%% Grid
#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(guest).
room(bathroom).
room(living).
room(bedroom).
room(kitchen).

%% Which cells are in the same room
in_room(0,0,guest).
in_room(0,1,guest).
in_room(0,2,guest).
in_room(1,2,guest).
in_room(1,1,guest).
in_room(1,0,guest).
in_room(0,3,bathroom).
in_room(1,3,bathroom).
in_room(1,4,bathroom).
in_room(0,4,bathroom).
in_room(0,5,bathroom).
in_room(1,5,bathroom).
in_room(2,5,bathroom).
in_room(3,5,bathroom).
in_room(2,4,living).
in_room(3,4,living).
in_room(3,3,living).
in_room(2,3,living).
in_room(2,2,living).
in_room(3,2,living).
in_room(3,1,living).
in_room(2,1,living).
in_room(2,0,bedroom).
in_room(3,0,bedroom).
in_room(4,0,bedroom).
in_room(5,0,bedroom).
in_room(5,1,bedroom).
in_room(4,1,bedroom).
in_room(4,2,bedroom).
in_room(5,2,bedroom).
in_room(4,3,kitchen).
in_room(5,3,kitchen).
in_room(5,4,kitchen).
in_room(4,4,kitchen).
in_room(4,5,kitchen).
in_room(5,5,kitchen).

%% objects
object(bed).
object(table).
object(chair).
object(plant).

%% object locations
contains(0,0,bed).
contains(0,1,bed).
contains(5,1,bed).
contains(5,2,bed).
contains(5,5,table).
contains(4,3,table).
contains(3,3,table).
contains(3,2,table).
contains(2,2,table).
contains(2,3,table).
contains(0,4,chair).
contains(2,4,chair).
contains(2,1,chair).
contains(3,1,chair).
contains(2,0,plant).
contains(3,4,plant).
contains(0,3,plant).

%% persons
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

% persons with time steps assigned
suspect(1,alphonse).
male(alphonse).
suspect(2,bonnie).
female(bonnie).
suspect(3,carol).
female(carol).
suspect(4,daniel).
male(daniel).
suspect(5,edward).
male(edward).
victim(6,victoria).
female(victoria).