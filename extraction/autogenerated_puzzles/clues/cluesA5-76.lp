%%%% Clues
clue(no_empty_room).
clue(n_persons_on,sofa,1).
clue(n_persons_on,chair,1).
clue(alice,in_left_column).
clue(alice,in_bottom_row).
clue(bernard,not_in_same_room,daniel).
clue(bernard,not_next_to,chair).
clue(bernard,not_next_to,statue).
clue(carol,no_object_in_row,box).
clue(carol,object_in_row,statue).
clue(daniel,in_room_with_female).
clue(daniel,in_right_column).
clue(daniel,on,sofa).