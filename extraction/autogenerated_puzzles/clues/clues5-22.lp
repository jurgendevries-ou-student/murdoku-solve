%%%% Clues
clue(alice,not_in_corner).
clue(alice,n_persons_on,chair,0).
clue(alice,next_to,chair).
clue(bonnie,no_empty_room).
clue(bonnie,in_corner).
clue(charlie,not_in_same_room,alice).
clue(charlie,north_of,daniel).
clue(charlie,next_to,chair).
clue(charlie,not_alone).
clue(charlie,in_same_room,bonnie).
clue(daniel,next_to,bed).