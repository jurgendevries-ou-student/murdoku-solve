%%%% Clues
clue(n_persons_on,bed,0).
clue(n_persons_on,sofa,1).
clue(alphonse,not_in_same_room,bonnie).
clue(bonnie,in_left_column).
clue(bonnie,n_south_of,alphonse,2).
clue(charlie,in_corner).
clue(charlie,not_next_to,sofa).