%%%% Clues
clue(n_persons_on,bed,1).
clue(alice,object_in_col,box).
clue(alice,not_in,hallway).
clue(alice,not_in_corner).
clue(bonnie,in_column,1).
clue(bonnie,not_in,livingroom).
clue(carol,not_in_room_with_female).
clue(carol,in_row,1).
clue(daniel,not_in_same_room,carol).
clue(daniel,in,bathroom).
clue(daniel,not_alone).
clue(daniel,no_object_in_row,statue).
clue(daniel,in_top_row).