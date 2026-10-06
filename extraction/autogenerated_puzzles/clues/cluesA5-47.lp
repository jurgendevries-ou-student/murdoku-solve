%%%% Clues
clue(alice,in_bottom_row).
clue(bernard,not_in_same_room,alice).
clue(carol,not_in_same_room,bernard).
clue(daniel,on,sofa).
clue(daniel,in_same_room,carol).
clue(daniel,object_in_col,closet).