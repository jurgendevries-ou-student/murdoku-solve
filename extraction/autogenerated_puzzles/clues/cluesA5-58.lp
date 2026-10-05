%%%% Clues
clue(n_persons_on,bed,0).
clue(alice,not_in_same_room,daniel).
clue(alice,in_bottom_row).
clue(alice,not_next_to,sofa).
clue(bonnie,not_in_same_room,daniel).
clue(bonnie,someone_else_in_room_on,sofa).
clue(bonnie,not_next_to,statue).
clue(bonnie,in_corner).
clue(carol,in,kitchen).
clue(carol,on,sofa).
clue(daniel,in,bedroom).
clue(daniel,in_top_row).
clue(daniel,west_of,carol).
clue(daniel,no_object_in_col,statue).