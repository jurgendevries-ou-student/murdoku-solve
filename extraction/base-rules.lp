person(X) :- suspect(X).
person(X) :- victim(X).
% achieved: every suspect and victim is also a person.

can_not_be_occupied(tv).
can_not_be_occupied(plant).
can_not_be_occupied(table).
can_not_be_occupied(register).
can_not_be_occupied(box).
% achieved: objects that cannot be occupied

-in_room(R,C,RR) :- room(RR), R=0..n, C=0..n, not in_room(R,C,RR).
% achieved: every cell is in only one room

{at(P,R,C) : cell(R,C)}=1 :- person(P).
% achieved: every person is on a cell in the grid.

%%%%%%%%%%%%%%%%%%%%%%%%%
%      definitions      %
%%%%%%%%%%%%%%%%%%%%%%%%%
murderer(P1) :- with_person(P1,P2), suspect(P1), victim(P2).
% achieved: the murderer is the suspect with the victim.

same_room((R1,C1),(R2,C2)) :- in_room(R1,C1,R), in_room(R2,C2,R).
% achieved: cells are in the same room.

adjacent((R1,C1), (R2,C2)) :- R1=R2, |C1-C2| = 1, same_room((R1,C1),(R2,C2)).
adjacent((R1,C1), (R2,C2)) :- C1=C2, |R1-R2| = 1, same_room((R1,C1),(R2,C2)).
% achieved: cells are adjecent, only if they are also in the same room.

next_to_object((R1,C1), O) :- contains(R2,C2,O), object(O), adjacent((R1,C1), (R2,C2)).
% achieved: a cell is next to an object if it is next to a cell that contains the object.

against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C-1,RR2), RR != RR2.
against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C+1,RR2), RR != RR2.
against_vertical_wall(R,C) :- C = 1, R=1..n.
against_vertical_wall(R,C) :- C = n, R=1..n.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R-1,C,RR2), RR != RR2.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R+1,C,RR2), RR != RR2.
against_vertical_wall(R,C) :- R = 1, C=1..n.
against_vertical_wall(R,C) :- R = n, C=1..n.
corner_cell(R,C) :- against_vertical_wall(R,C), against_horizontal_wall(R,C).
% achieved: decide when a cell is in the corner of a room

satisfies(P,next_to,O) :- at(P,R,C), next_to_object((R,C),O).
% achieved: satisfies a clue with the next_to_object rule (a person must be next to an object).

satisfies(P,not_next_to,O) :- at(P,R,C), object(O), not next_to_object((R,C),O).
% achieved: satisfies a clue with the not_next_to_object rule (a person must be next to an object).

%satisfies(P1,next_to_with_someone_else,O) :- at(P1,R1,C1), next_to_object((R1,C1),O), at(P2,R2,C2), next_to_object((R2,C2),O), P1 != P2.
satisfies(P1,next_to_with_someone_else,O) :- at(P1,R1,C1), contains(R0,C0,O), adjacent((R1,C1), (R0,C0)), at(P2,R2,C2), adjacent((R2,C2), (R0,C0)), P1 != P2.
%satisfies(P1,next_to_with_someone_else,O) :- at(P1,R1,C1), contains(R0,C0,O), next_to_object((R1,C1),O), at(P2,R2,C2), next_to_object((R2,C2),O), P1 != P2.
% achieved: satisfies a clue with next to object, but someone else was next to the same object.

satisfies(P,on,O) :- at(P,R,C), contains(R,C,O).
% achieved: satisfies a clue with on context (a person is on an object).

satisfies(P,not_on,O) :- at(P,R,C), object(O), not contains(R,C,O).
% achieved: satisfies a clue with not on context (a person is not on an object).

satisfies(P,only_one_on,O) :- at(P,R,C), contains(R,C,O), #count{P1 : at(P1,R1,C1), contains(R1,C1,O), P1 != P} = 0.
% achieved: satisfies a clue with only person on an object

satisfies(P,in,RR) :- at(P,R,C), in_room(R,C,RR).
% achieved: person is in room

satisfies(P,in_same_room,P2) :- with_person(P, P2).
% achieved: persons are in same room

satisfies(P,not_in,RR) :- at(P,R,C), room(RR), not in_room(R,C,RR).
% Als we geen info hebben (wat misschien zou kunnen als de kamers niet een vierkant vormen), dan klopt het toch ook dat persoon P niet in kamer RR is?
% satisfies(P,not_in,RR) :- at(P,R,C), in_room(R,C,RR2), RR!=RR2.

%% maar misschien is het mooier om samen met een persoon apart te bepalen, zodat we het her kunnen gebruiken
with_person(P1,P2) :- at(P1, R1, C1), at(P2, R2, C2), same_room((R1, C1), (R2, C2)), P1 != P2.

satisfies(P1,alone) :- person(P1), not with_person(P1,_).
satisfies(P1,not_alone) :- with_person(P1,_).
% achieved person is (not) alone

satisfies(P1, in_room_with_female) :- with_person(P1,P2), female(P2).
satisfies(P1, in_room_with_male) :- with_person(P1,P2), male(P2).
satisfies(P1, not_in_room_with_female) :- not with_person(P1,P2), person(P1), female(P2).
satisfies(P1, not_in_room_with_male) :- not with_person(P1,P2), person(P1), male(P2).
satisfies(P1, in_room_with_multiple_females,N) :- person(P1), #count{P2: with_person(P1,P2), female(P2)} = N.
satisfies(P1, in_room_with_multiple_males,N) :-  person(P1), #count{P2: with_person(P1,P2), male(P2)} = N.
% person is (not) in same room as n males/females


satisfies(P1, east_of, P2)  :- at(P1, R1, C1), at(P2, R2, C2), C1 > C2.
satisfies(P1, west_of, P2)  :- at(P1, R1, C1), at(P2, R2, C2), C1 < C2.
satisfies(P1, north_of, P2) :- at(P1, R1, C1), at(P2, R2, C2), R1 < R2.
satisfies(P1, south_of, P2) :- at(P1, R1, C1), at(P2, R2, C2), R1 > R2.
% achieved: person is east/west/north/south of another person

satisfies(P1,in_row,R) :- at(P1,R,_).
% achieved: person is in row R

satisfies(P1,in_column,C) :- at(P1,_,C).
% achieved: person is in col C

satisfies(P1,in_top_row) :- at(P1,n,_).
% achieved: person is in top row

satisfies(P1,in_bottom_row) :- at(P1,0,_).
% achieved: person is in bottom row

satisfies(P1,in_right_column) :- at(P1,_,n).
% achieved: person is in right column

satisfies(P1,in_left_column) :- at(P1,_,0).
% achieved: person is in left column

satisfies(P1,object_in_col,O) :- at(P1,R,C), contains(_,C,O).
satisfies(P1,object_in_row,O) :- at(P1,R,C), contains(R,_,O).
% achieved: there is an object O in persons col/row

satisfies(P1,no_object_in_col,O) :- object(O), at(P1,R,C), not contains(_,C,O).
satisfies(P1,no_object_in_row,O) :- object(O), at(P1,R,C), not contains(R,_,O).
% achieved: there is no object O in persons col/row

satisfies(P1,in_corner) :- at(P1,R,C), corner_cell(R,C).
% achieved: person is in corner

satisfies(P1,not_in_corner) :- at(P1,R,C), not corner_cell(R,C).
% achieved: person is not in corner

satisfies(P1,someone_else_in_room_on,O): at(P1,R1,C1), at(P2,R2,C2), same_room((R1,C1),(R2,C2)), contains(R2,C2,O), P1 != P2.
% achieved: someone else in persons room was on an object.

%%%%%%%%%%%%%%%%%%%%%%%%%
%      General clues    %
%%%%%%%%%%%%%%%%%%%%%%%%%
empty_room(RR) :- room(RR), #count{P : person(P), at(P,R,C), in_room(R,C,RR)} = 0.
satisfies(no_empty_room) :- #count{RR : empty_room(RR)} = 0.
%% achieved: there are no empty rooms (empty room is a person where 0 persons are. No empty rooms is zero empty rooms).


satisfies(n_persons_on, O, N) :- object(O), #count{P : at(P,R,C), contains(R,C,O)} = N.
%% exactly N persons on object (example: "there is exactly one person on a chair") 
%% TODO: test this general clue in a puzzle

%%%%%%%%%%%%%%%%%%%%%%%%%
%      constraints      %
%%%%%%%%%%%%%%%%%%%%%%%%%

:- person(P), person(P1), at(P,R,C), at(P1,R1,C1), R=R1, P!=P1.
:- person(P), person(P1), at(P,R,C), at(P1,R1,C1), C=C1, P!=P1.
% achieved: no two persons may be in the same row or col.

:- clue(P,T,O), not satisfies(P,T,O).
% achieved: all clues containing Person, Type, Object/Person must be satisfied.

:- clue(P,T), not satisfies(P,T).
% achieved: all clues containing Person, Type must be satisfied.

:- clue(T), not satisfies(T).
% achieved: all general clues containing Type must be satisfied.

:- at(P,R,C), contains(R,C,O), can_not_be_occupied(O).
% achieved: objects that can not be occupied may not contain a person.

:- victim(P1), #count{P2 : with_person(P1,P2), suspect(P2)} != 1.
% achieved: victim is always with exactly one suspect!
