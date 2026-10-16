%% Grid
#const n = 5.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(living).
room(bedroom).
room(hallway).
room(dining).

%% Which cells are in the same room
in_room(0,1,living).
in_room(1,0,living).
in_room(0,0,living).
in_room(1,1,living).
in_room(0,2,living).
in_room(1,2,living).
in_room(2,2,living).
in_room(2,1,living).
in_room(2,0,living).
in_room(0,3,bedroom).
in_room(1,3,bedroom).
in_room(2,3,bedroom).
in_room(2,4,bedroom).
in_room(2,5,bedroom).
in_room(1,5,bedroom).
in_room(0,5,bedroom).
in_room(0,4,bedroom).
in_room(1,4,bedroom).
in_room(3,0,hallway).
in_room(3,1,hallway).
in_room(3,2,hallway).
in_room(4,2,hallway).
in_room(5,2,hallway).
in_room(5,1,hallway).
in_room(5,0,hallway).
in_room(4,0,hallway).
in_room(4,1,hallway).
in_room(3,3,dining).
in_room(3,4,dining).
in_room(3,5,dining).
in_room(4,5,dining).
in_room(5,5,dining).
in_room(5,4,dining).
in_room(5,3,dining).
in_room(4,3,dining).
in_room(4,4,dining).

%% objects
object(plant).
object(table).
object(bed).
object(carpet).
object(window).

%% object locations
contains(4,2,plant).
contains(4,5,plant).
contains(3,0,table).
contains(5,0,table).
contains(3,5,table).
contains(1,4,bed).
contains(2,4,bed).
contains(1,2,carpet).
contains(0,1,window).
contains(0,4,window).

%% persons
suspect(alphonse).
male(alphonse).
suspect(bonnie).
female(bonnie).
suspect(carol).
female(carol).
suspect(daniel).
male(daniel).
suspect(emily).
female(emily).
victim(victor).
male(victor).

% persons with time steps assigned
suspect(1, alphonse).
male(alphonse).
suspect(2, bonnie).
female(bonnie).
suspect(3, carol).
female(carol).
suspect(4, daniel).
male(daniel).
suspect(5,emily).
female(emily).
victim(6,victor).
male(victor).