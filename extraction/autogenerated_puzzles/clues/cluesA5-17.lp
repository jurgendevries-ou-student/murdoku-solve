%%%% Clues
clue(n_persons_on,bed,0).
clue(alphonse,not_next_to,bed).
clue(alphonse,not_next_to,box).
clue(bonnie,not_in_same_room,alphonse).
clue(bonnie,not_next_to,bed).
clue(bonnie,not_next_to,closet).
clue(bonnie,not_in,bathroom).
clue(carol,not_alone).
clue(carol,not_in_same_room,bonnie).
clue(carol,not_in,livingroom).
clue(carol,in_right_column).
clue(carol,not_in_same_room,alphonse).
clue(daniel,not_in_same_room,carol).
clue(daniel,alone).
clue(daniel,not_in,kitchen).
clue(daniel,in_top_row).