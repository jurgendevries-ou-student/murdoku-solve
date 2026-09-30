%%%% Clues
clue(no_empty_room).
clue(n_persons_on,chair,0).
clue(alice,not_in_corner).
clue(alice,next_to,chair).
clue(bonnie,in_corner).
clue(charlie,not_in_same_room,alice).
clue(charlie,north_of,daniel).
clue(charlie,next_to,chair).
clue(charlie,not_alone).
clue(charlie,in_same_room,bonnie).
clue(daniel,next_to,bed).