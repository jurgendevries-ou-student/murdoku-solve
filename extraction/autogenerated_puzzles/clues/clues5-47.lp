%%%% Clues
clue(alice,n_persons_on,bed,0).
clue(alice,not_in_same_room,daniel).
clue(alice,not_next_to,bed).
clue(alice,in_bottom_row).
clue(bernard,not_in_same_room,alice).
clue(bernard,in,kitchen).
clue(carol,not_in_same_room,bernard).
clue(carol,next_to,sofa).
clue(carol,not_next_to,closet).
clue(daniel,on,sofa).
clue(daniel,in_same_room,carol).
clue(daniel,north_of,alice).
clue(daniel,in_column,3).