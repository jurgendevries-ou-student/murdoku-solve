%%%%%%%%%%%%%%%%%%%%%%%%%
%        facts          %
%%%%%%%%%%%%%%%%%%%%%%%%%
#const n = 3.

% rooms
room(a).
room(b).

% persons
person(alice).
person(bob).
person(charlie).

% clues
clue(bob,next_to,plant).
clue(bob,alone).
clue(alice,not_next_to,tv).
clue(charlie, on, chair).
clue(charlie, not_alone).
clue(alice,not_in,a).

% objects
object(plant).
object(tv).
object(chair).

can_not_be_occupied(tv).
can_not_be_occupied(plant).

% cells
cell(R,C) :- R = 1..n, C = 1..n.

% object locations
contains(1,1,plant).
contains(3,3,tv).
contains(2,3,chair).

% Which cells are in the same room
in_room(1,1,a).
in_room(1,2,a).
in_room(1,3,a).
in_room(2,1,b).
in_room(2,2,b).
in_room(2,3,b).
in_room(3,1,b).
in_room(3,2,b).
in_room(3,3,b).

%Cells can only have one room
-in_room(R,C,RR) := not in_room(R,C,RR)

% place persons in grid
{at(P,R,C) : cell(R,C)}=1 :- person(P).

%%%%%%%%%%%%%%%%%%%%%%%%%
%      definitions      %
%%%%%%%%%%%%%%%%%%%%%%%%%
same_room((R1,C1),(R2,C2)) :- in_room(R1,C1,R), in_room(R2,C2,R).
% achieved: cells are in the same room.

adjacent((R1,C1), (R2,C2)) :- R1=R2, |C1-C2| = 1, same_room((R1,C1),(R2,C2)).
adjacent((R1,C1), (R2,C2)) :- C1=C2, |R1-R2| = 1, same_room((R1,C1),(R2,C2)).
% achieved: cells are adjecent, only if they are also in the same room.

next_to_object((R1,C1), O) :- contains(R2,C2,O), object(O), adjacent((R1,C1), (R2,C2)).
% achieved: a cell is next to an object if it is next to a cell that contains the object.

against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C-1,RR2), RR != RR2.
against_vertical_wall(R,C) :- in_room(R,C,RR), in_room(R,C+1,RR2), RR != RR2.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R-1,C,RR2), RR != RR2.
against_horizontal_wall(R,C) :- in_room(R,C,RR), in_room(R+1,C,RR2), RR != RR2.
corner_cell(R,C) :- against_vertical_wall(R,C), against_horizontal_wall(R,C).


satisfies(P,next_to,O) :- at(P,R,C), next_to_object((R,C),O).
% achieved: satisfies a clue with the next_to_object rule (a person must be next to an object).

satisfies(P,not_next_to,O) :- at(P,R,C), object(O), not next_to_object((R,C),O).
% achieved: satisfies a clue with the not_next_to_object rule (a person must be next to an object).

satisfies(P,on,O) :- at(P,R,C), contains(R,C,O).
% achieved: satisfies a clue with on context (a person is on an object).

satisfies(P,not_on,O) :- at(P,R,C), object(O), not contains(R,C,O).
% achieved: satisfies a clue with not on context (a person is not on an object).

satisfies(P,alone) :- at(P,R,C), #count{P1 : at(P1,R1,C1), P1 != P, same_room((R,C),(R1,C1))} = 0.
% achieved: person is alone

satisfies(P,not_alone) :- at(P,R,C), #count{P1 : at(P1,R1,C1), P1 != P, same_room((R,C),(R1,C1))} > 0.
% achieved: person is not alone


satisfies(P,in,RR) :- at(P,R,C), in_room(R,C,RR).
% achieved: person is in room

satisfies(P,not_in,RR) :- at(P,R,C), room(RR), not in_room(R,C,RR).
% achieved: person is not in room
% CHECK: als we geen info hebben, wordt het dan ook niet not_in? Of maakt dat niet uit omdat 


satisfies(P,in_corner) :- at(P,R,C), corner_cell(R,C).
% achieved: person is in corner

satisfies(P,not_in_corner) :- at(P,R,C), not corner_cell(R,C).
% achieved: person is not in corner

%%%%%%%%%%%%%%%%%%%%%%%%%
%      constraints      %
%%%%%%%%%%%%%%%%%%%%%%%%%

:- at(P,R,C), at(P1,R1,C1), R=R1, P!=P1.
:- at(P,R,C), at(P1,R1,C1), C=C1, P!=P1.
% achieved: no two persons may be in the same row or col.

:- clue(P,T,O), not satisfies(P,T,O).
% achieved: al clues must be satisfied.

:- clue(P,T), not satisfies(P,T).

:- at(P,R,C), contains(R,C,O), can_not_be_occupied(O).
% achieved: objects that can not be occupied may not contain a person.


%%%%%%%%%%%%%%%%%%%%%%%%%
%         output        %
%%%%%%%%%%%%%%%%%%%%%%%%%
% #show adjacent/2.
% #show next_to_object/2.
#show at/3.
#show clue/2.
#show clue/3.
