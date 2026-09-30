%%%% Clues
clue(n_persons_on,chair,0).
clue(n_persons_on,bed,0).
clue(alice,in,bathroom).
clue(alice,north_of,daniel).
clue(alice,north_of,bonnie).
clue(alice,in_top_row).
clue(bonnie,not_in_same_room,daniel).
clue(bonnie,in_column,0).
clue(carol,alone).
clue(carol,not_next_to,chair).
clue(daniel,west_of,alice).
clue(daniel,in_bottom_row).