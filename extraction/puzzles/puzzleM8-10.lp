%% Grid
#const n = 7.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(bedroom).
room(living).
room(kitchen).
room(dining).
room(bathroom).
room(guest).

%% Which cells are in the same room
in_room(3,0,bedroom).
in_room(3,1,bedroom).
in_room(2,1,bedroom).
in_room(2,0,bedroom).
in_room(1,0,bedroom).
in_room(1,1,bedroom).
in_room(0,0,bedroom).
in_room(0,1,bedroom).
in_room(0,2,bedroom).
in_room(0,3,bedroom).
in_room(4,0,living).
in_room(5,0,living).
in_room(6,0,living).
in_room(7,0,living).
in_room(7,1,living).
in_room(7,2,living).
in_room(6,2,living).
in_room(6,3,living).
in_room(5,3,living).
in_room(4,3,living).
in_room(4,2,living).
in_room(4,1,living).
in_room(5,1,living).
in_room(5,2,living).
in_room(6,1,living).
in_room(7,3,kitchen).
in_room(7,4,kitchen).
in_room(7,5,kitchen).
in_room(7,6,kitchen).
in_room(7,7,kitchen).
in_room(6,7,kitchen).
in_room(6,6,kitchen).
in_room(6,4,dining).
in_room(6,5,dining).
in_room(5,4,dining).
in_room(4,4,dining).
in_room(3,4,dining).
in_room(3,5,dining).
in_room(4,5,dining).
in_room(5,5,dining).
in_room(3,6,dining).
in_room(4,6,dining).
in_room(5,6,dining).
in_room(5,7,dining).
in_room(4,7,dining).
in_room(3,7,dining).
in_room(3,2,bathroom).
in_room(2,2,bathroom).
in_room(1,2,bathroom).
in_room(1,3,bathroom).
in_room(2,3,bathroom).
in_room(3,3,bathroom).
in_room(0,4,guest).
in_room(1,4,guest).
in_room(2,4,guest).
in_room(2,5,guest).
in_room(2,6,guest).
in_room(2,7,guest).
in_room(1,7,guest).
in_room(0,7,guest).
in_room(0,6,guest).
in_room(1,6,guest).

%% objects
object(bed).
object(table).
object(shelf).
object(chair).
object(plant).
object(tv).
object(window).

%% object locations
contains(0,0,bed).
contains(0,1,bed).
contains(0,4,bed).
contains(1,4,bed).
contains(0,6,bed).
contains(1,6,bed).
contains(0,5,table).
contains(1,5,table).
contains(1,3,table).
contains(2,7,table).
contains(3,7,table).
contains(4,5,table).
contains(5,5,table).
contains(6,7,table).
contains(5,1,table).
contains(7,0,shelf).
contains(7,1,shelf).
contains(7,7,shelf).
contains(3,1,shelf).
contains(0,3,shelf).
contains(4,1,chair).
contains(5,4,chair).
contains(4,4,chair).
contains(6,5,chair).
contains(7,2,plant).
contains(5,3,tv).
contains(6,0,window).
contains(5,0,window).
contains(2,0,window).
contains(1,0,window).

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
suspect(george).
male(george).
victim(victor).
male(victor).

% persons with time steps assigned
suspect(1,alphonse).
male(alphonse).
suspect(2,bernard).
male(bernard).
suspect(3,carol).
female(carol).
suspect(4,daisy).
female(daisy).
suspect(5,emily).
female(emily).
suspect(6,frank).
male(frank).
suspect(7,george).
male(george).
victim(8,victor).
male(victor).