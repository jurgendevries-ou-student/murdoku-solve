%%%% Clues
clue(n_persons_on,carpet,1).
clue(alice,not_next_to,chair).
clue(alice,not_in_room_with_female).
clue(alice,in,bathroom).
clue(bernard,object_in_col,box).
clue(bernard,not_next_to,chair).
clue(bernard,not_in,bathroom).
clue(carol,not_in_same_room,bernard).
clue(carol,in_same_room,daniel).
clue(carol,in_right_column).
clue(daniel,not_in_corner).
clue(daniel,in_row,2).