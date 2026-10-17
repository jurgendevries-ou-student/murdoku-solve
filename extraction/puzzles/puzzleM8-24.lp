%% Grid
#const n = 7.
cell(R,C) :- R = 0..n, C = 0..n.

%% Rooms
room(storage).
room(repair).
room(computers).
room(counter).
room(entertainment).

%% Which cells are in the same room
in_room(0,0,storage).
in_room(1,0,storage).
in_room(2,0,storage).
in_room(2,1,storage).
in_room(1,1,storage).
in_room(0,1,storage).
in_room(0,2,storage).
in_room(1,2,storage).
in_room(2,2,storage).
in_room(2,3,storage).
in_room(1,3,storage).
in_room(0,3,storage).
in_room(0,4,repair).
in_room(1,4,repair).
in_room(2,4,repair).
in_room(2,5,repair).
in_room(1,5,repair).
in_room(0,5,repair).
in_room(0,6,repair).
in_room(1,6,repair).
in_room(2,6,repair).
in_room(2,7,repair).
in_room(1,7,repair).
in_room(0,7,repair).
in_room(3,0,computers).
in_room(4,0,computers).
in_room(5,0,computers).
in_room(6,0,computers).
in_room(7,0,computers).
in_room(7,1,computers).
in_room(6,1,computers).
in_room(5,2,computers).
in_room(6,2,computers).
in_room(7,2,computers).
in_room(5,1,computers).
in_room(4,1,computers).
in_room(3,1,computers).
in_room(3,2,counter).
in_room(4,2,counter).
in_room(4,3,counter).
in_room(3,3,counter).
in_room(3,4,counter).
in_room(4,4,counter).
in_room(4,5,counter).
in_room(3,5,counter).
in_room(5,3,entertainment).
in_room(5,5,entertainment).
in_room(5,4,entertainment).
in_room(6,4,entertainment).
in_room(6,3,entertainment).
in_room(7,3,entertainment).
in_room(7,4,entertainment).
in_room(7,5,entertainment).
in_room(6,5,entertainment).
in_room(6,6,entertainment).
in_room(7,6,entertainment).
in_room(7,7,entertainment).
in_room(6,7,entertainment).
in_room(5,7,entertainment).
in_room(5,6,entertainment).
in_room(4,6,entertainment).
in_room(3,6,entertainment).
in_room(3,7,entertainment).
in_room(4,7,entertainment).

%% objects
object(tv).
object(table).
object(shelf).
object(chair).
object(register).
object(box).

%% object locations
contains(1,0,tv).
contains(0,0,tv).
contains(0,1,tv).
contains(0,7,tv).
contains(1,5,tv).
contains(6,1,tv).
contains(4,1,tv).
contains(3,2,tv).
contains(6,7,tv).
contains(6,5,tv).
contains(4,7,tv).
contains(4,2,table).
contains(6,3,table).
contains(6,4,table).
contains(3,1,shelf).
contains(5,4,shelf).
contains(1,7,shelf).
contains(1,6,chair).
contains(4,3,register).
contains(4,4,register).
contains(2,0,box).
contains(0,2,box).
contains(3,7,box).

%% persons
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
suspect(4,daniel).
male(daniel).
suspect(5,edward).
male(edward).
suspect(6,frank).
male(frank).
suspect(7,george).
male(george).
victim(8,victor).
male(victor).