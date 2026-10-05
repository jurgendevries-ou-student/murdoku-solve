%%%% Clues
clue(n_persons_on,chair,0).
clue(n_persons_on,bed,1).
clue(alice,no_object_in_col,closet).
clue(alice,not_in_corner).
clue(alice,in_bottom_row).
clue(bernard,not_in_same_room,alice).
clue(bernard,not_in_same_room,daniel).
clue(bernard,not_in_room_with_female).
clue(charlie,in_same_room,florence).
clue(charlie,on,sofa).
clue(charlie,next_to,statue).
clue(daniel,next_to,bed).
clue(daniel,in_left_column).
clue(edward,not_in_room_with_female).
clue(edward,not_in_corner).
clue(florence,in_column,2).