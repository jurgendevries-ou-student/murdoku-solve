%%%% Clues
clue(n_persons_on,bed,0).
clue(alphonse,not_next_to,bed).
clue(alphonse,object_in_col,closet).
clue(alphonse,not_next_to,box).
clue(bonnie,not_in_same_room,alphonse).
clue(bonnie,in,kitchen).
clue(carol,not_alone).
clue(carol,not_in_same_room,bonnie).
clue(carol,not_in,livingroom).
clue(carol,in_right_column).
clue(daniel,no_object_in_col,closet).
clue(daniel,in_top_row).