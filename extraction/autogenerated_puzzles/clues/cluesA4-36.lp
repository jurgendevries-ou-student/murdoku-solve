%%%% Clues
clue(no_empty_room).
clue(n_persons_on,carpet,0).
clue(alphonse,in_bottom_row).
clue(bernard,west_of,alphonse).
clue(bernard,not_next_to,closet).
clue(carol,not_in_same_room,bernard).
clue(carol,object_in_col,closet).
clue(carol,in_left_column).