%%%% Clues
clue(alice,not_in_corner).
clue(alice,in_left_column).
clue(alice,n_persons_on,chair,0).
clue(bonnie,not_in_same_room,daniel).
clue(bonnie,not_in_same_room,charlie).
clue(bonnie,in_corner).
clue(bonnie,in_column,2).
clue(charlie,in_same_room,alice).
clue(charlie,next_to,closet).
clue(charlie,north_of,daniel).
clue(charlie,in_column,4).
clue(daniel,not_in_same_room,bonnie).
clue(daniel,next_to,closet).
clue(daniel,east_of,alice).
clue(daniel,in_column,3).