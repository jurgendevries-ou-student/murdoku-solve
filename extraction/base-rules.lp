%% beetje ordenen en soortgelijke dingen bij elkaar zetten

person(X) :- suspect(X).
person(X) :- victim(X).
person(X) :- male(X).
person(X) :- female(X).
% achieved: every suspect and victim is also a person.

can_not_be_occupied(tv).
can_not_be_occupied(plant).
can_not_be_occupied(table).
can_not_be_occupied(register).
can_not_be_occupied(box).
can_not_be_occupied(shelf).
can_not_be_occupied(bookshelf).
% achieved: objects that cannot be occupied

%% Uitgezet!
% wij geven zelf al op dat cellen maar in een kamer zijn, dit maakt geen verschil voor de resultaten. 
% Dus de aanname is dat we de puzzles goed invoeren/genereren waardoor elke cel al maar in een kamer is.
% -in_room(R,C,RR) :- room(RR), R=0..n, C=0..n, not in_room(R,C,RR).
% achieved: every cell is in only one room

{at(P,R,C) : can_occupy(R,C)}=1 :- person(P).
% achieved: every person is on a cell in the grid.

%%%%%%%%%%%%%%%%%%%%%%%%%
%      definitions      %
%%%%%%%%%%%%%%%%%%%%%%%%%
murderer(P1) :- with_person(P1,P2), suspect(P1), victim(P2).
% achieved: the murderer is the suspect with the victim.

contains_non_occupiable_object(R,C) :- contains(R,C,O), can_not_be_occupied(O).
can_occupy(R,C) :- cell(R,C), not contains_non_occupiable_object(R,C).

cell_same_room((R1,C1),(R2,C2)) :- in_room(R1,C1,RR), in_room(R2,C2,RR).
% achieved: cells are in the same room.

adjacent((R1,C1), (R2,C2)) :- R1=R2, |C1-C2| = 1, cell_same_room((R1,C1),(R2,C2)).
adjacent((R1,C1), (R2,C2)) :- C1=C2, |R1-R2| = 1, cell_same_room((R1,C1),(R2,C2)).
% achieved: cells are adjecent, only if they are also in the same room.

next_to_object((R1,C1), O) :- contains(R2,C2,O), object(O), adjacent((R1,C1), (R2,C2)).
% achieved: a cell is next to an object if it is next to a cell that contains the object.

against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C-1,RR2), RR != RR2.
against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C+1,RR2), RR != RR2.
against_vertical_wall(R,C) :- C = 0, R=0..n.
against_vertical_wall(R,C) :- C = n, R=0..n.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R-1,C,RR2), RR != RR2.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R+1,C,RR2), RR != RR2.
against_horizontal_wall(R,C) :- R = 0, C=0..n.
against_horizontal_wall(R,C) :- R = n, C=0..n.
corner_cell(R,C) :- against_vertical_wall(R,C), against_horizontal_wall(R,C).
% achieved: decide when a cell is in the corner of a room

satisfies(P,next_to,O) :- at(P,R,C), next_to_object((R,C),O).
% achieved: satisfies a clue with the next_to_object rule (a person must be next to an object).

satisfies(P,not_next_to,O) :- at(P,R,C), object(O), not next_to_object((R,C),O).
% achieved: satisfies a clue with the not_next_to_object rule (a person must be next to an object).

satisfies(P1,next_to_with_someone_else,O) :- at(P1,R1,C1), contains(R0,C0,O), adjacent((R1,C1), (R0,C0)), at(P2,R2,C2), adjacent((R2,C2), (R0,C0)), P1 != P2.
% achieved: satisfies a clue with next to object, but someone else was next to the same object.

satisfies(P,on,O) :- at(P,R,C), contains(R,C,O).
% achieved: satisfies a clue with on context (a person is on an object).

satisfies(P,not_on,O) :- at(P,R,C), object(O), not contains(R,C,O).
% achieved: satisfies a clue with not on context (a person is not on an object).

satisfies(P1,only_one_on,O) :- at(P1,R1,C1), contains(R1,C1,O), #count{P2 : at(P2,R2,C2), contains(R2,C2,O), P1 != P2} = 0.
% achieved: satisfies a clue with only person on an object

satisfies(P,in,RR) :- at(P,R,C), in_room(R,C,RR).
% achieved: person is in room

satisfies(P,not_in,RR) :- at(P,R,C), room(RR), not in_room(R,C,RR).
% achieved: person is not in room.

satisfies(P1,in_same_room,P2) :- with_person(P1, P2).
% achieved: persons are in same room

satisfies(P1,not_in_same_room,P2) :- not with_person(P1, P2), person(P1), person(P2).
% achieved: persons are not in same room

with_person(P1,P2) :- at(P1, R1, C1), at(P2, R2, C2), cell_same_room((R1, C1), (R2, C2)), P1 != P2.
% achieved: 2 person are in the same room if both cells are in the same room.

satisfies(P1,alone) :- person(P1), not with_person(P1,_).
satisfies(P1,not_alone) :- with_person(P1,_).
% achieved person is (not) alone

satisfies(P1, in_room_with_female) :- with_person(P1,P2), female(P2).
satisfies(P1, in_room_with_male) :- with_person(P1,P2), male(P2).
satisfies(P1, not_in_room_with_female) :- person(P1), #count{P2: with_person(P1,P2), female(P2)} = 0.
satisfies(P1, not_in_room_with_male) :- person(P1), #count{P2: with_person(P1,P2), male(P2)} = 0.
satisfies(P1, in_room_with_multiple_females,N) :- person(P1), #count{P2: with_person(P1,P2), female(P2)} = N.
satisfies(P1, in_room_with_multiple_males,N) :-  person(P1), #count{P2: with_person(P1,P2), male(P2)} = N.
% person is (not) in same room as n males/females

distance(P1,P2,DC,DR) :- at(P1, R1, C1), at(P2, R2, C2), DC = C1 - C2, DR = R1 - R2.
% achieved: DC is delta column, DR is delta row, distance between P1 and P2 to be used in east_of/west_of/south_of/north_of etc.

satisfies(P1, east_of, P2)  :- distance(P1, P2, DC, _), DC > 0.
satisfies(P1, west_of, P2)  :- distance(P1, P2, DC, _), DC < 0.
satisfies(P1, north_of, P2)  :- distance(P1, P2, _, RC), RC < 0.
satisfies(P1, south_of, P2)  :- distance(P1, P2, _, RC), RC > 0.
% achieved: person is east/west/north/south of another person

satisfies(P1, n_east_of, P2, N)  :- distance(P1, P2, DC, _), DC = N.
satisfies(P1, n_west_of, P2, N)  :- distance(P1, P2, DC, _), DC = -N.
satisfies(P1, n_north_of, P2, N)  :- distance(P1, P2, _, DR), DR = -N.
satisfies(P1, n_south_of, P2, N)  :- distance(P1, P2, _, DR), DR = N.
% achieved: person is exaxtly N columns/rows east/west/north/south of another person

satisfies(P1,in_row,R) :- at(P1,R,_).
% achieved: person is in row R

satisfies(P1,in_column,C) :- at(P1,_,C).
% achieved: person is in col C

satisfies(P1,in_top_row) :- at(P1,0,_).
% achieved: person is in top row

satisfies(P1,in_bottom_row) :- at(P1,n,_).
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

satisfies(P1,someone_else_in_room_next_to,O):- at(P2,R2,C2), with_person(P1,P2), next_to_object((R2,C2),O).
satisfies(P1,someone_else_in_room_on,O):- at(P2,R2,C2), with_person(P1,P2), contains(R2,C2,O).
% achieved: someone else in persons room was on/next_to an object.
% Versimpeld: door gebruik te maken van with_person wordt al gekeken of P1 en P2 verschillende personen zijn,
% en zich in dezelfde kamer bevinden, vervolgens moet alleen nog gekeken worden of persoon P2 op een object O is.

satisfies(P1,object_in_same_room,O) :- at(P1,R1,C2), contains(R2,C2,O), cell_same_room((R1,C1),(R2,C2)).
% achieved: there is an object O in the same room as the person.

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

:- person(P1), person(P2), at(P1,R1,C1), at(P2,R2,C2), R1=R2, P1!=P2.
:- person(P1), person(P2), at(P1,R1,C1), at(P2,R2,C2), C1=C2, P1!=P2.
% achieved: no two persons may be in the same row or col.

:- clue(P,T,O,N), not satisfies(P,T,O,N).
% achieved: all clues containing, Person, Type, Object/Person, Numeric Value must be satisfied.

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
