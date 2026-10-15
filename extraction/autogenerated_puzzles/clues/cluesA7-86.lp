%%%% Clues
clue(n_persons_on,sofa,0).
clue(n_persons_on,bed,0).
clue(no_empty_room).
clue(alice,not_in_corner).
clue(bonnie,not_in_same_room,daniel).
clue(charlie,next_to,sofa).
clue(daniel,object_in_row,statue).
clue(emily,next_to,bed).
clue(frank,next_to,bed).
clue(frank,in_column,1).