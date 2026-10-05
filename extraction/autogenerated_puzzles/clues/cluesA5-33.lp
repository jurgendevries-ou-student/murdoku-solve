%%%% Clues
clue(n_persons_on,bed,0).
clue(alice,not_in,livingroom).
clue(alice,not_in_corner).
clue(alice,east_of,daisy).
clue(bonnie,east_of,alice).
clue(bonnie,in_row,0).
clue(carol,in,livingroom).
clue(carol,not_next_to,sofa).
clue(carol,someone_else_in_room_on,sofa).
clue(carol,in_corner).
clue(daisy,in_room_with_multiple_females,2).
clue(daisy,in_column,1).