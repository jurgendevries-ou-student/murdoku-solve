%%%% Clues
clue(no_empty_room).
clue(n_persons_on,bed,1).
clue(n_persons_on,carpet,0).
clue(alphonse,in_same_room,charlie).
clue(alphonse,not_next_to,bed).
clue(alphonse,east_of,charlie).
clue(bernard,in_same_room,emily).
clue(bernard,next_to,statue).
clue(bernard,in_column,4).
clue(charlie,not_in_corner).
clue(charlie,east_of,daniel).
clue(charlie,in_column,2).
clue(daniel,west_of,alphonse).
clue(daniel,not_in_corner).
clue(daniel,in_column,0).
clue(emily,not_in_room_with_female).
clue(emily,in_right_column).