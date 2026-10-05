%%%% Clues
clue(n_persons_on,carpet,0).
clue(alphonse,not_in_same_room,charlie).
clue(alphonse,in_row,3).
clue(alphonse,not_in_corner).
clue(bonnie,next_to,carpet).
clue(charlie,not_in_same_room,bonnie).
clue(charlie,not_in_corner).
clue(charlie,no_object_in_col,closet).
clue(charlie,next_to,closet).
clue(daisy,next_to,statue).