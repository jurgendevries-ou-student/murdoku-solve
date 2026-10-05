%%%% Clues
clue(n_persons_on,chair,0).
clue(alice,not_in_corner).
clue(alice,in_left_column).
clue(bonnie,not_in_same_room,daniel).
clue(bonnie,not_in_same_room,charlie).
clue(bonnie,in_corner).
clue(bonnie,in_column,2).
clue(charlie,in_same_room,alice).
clue(charlie,next_to,closet).
clue(charlie,north_of,daniel).
clue(charlie,in_column,4).
clue(daniel,not_in_same_room,bonnie).
clue(daniel,object_in_col,closet).
clue(daniel,next_to,closet).
clue(daniel,not_in_corner).
clue(daniel,east_of,alice).