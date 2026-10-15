%%%% Clues
clue(n_persons_on,chair,0).
clue(n_persons_on,bed,0).
clue(alice,not_in_room_with_male).
clue(bonnie,not_in_same_room,alice).
clue(bonnie,not_in_corner).
clue(bonnie,not_next_to,sofa).
clue(carol,next_to,closet).
clue(carol,in_column,7).
clue(daisy,in_same_room,bonnie).
clue(daisy,next_to,box).
clue(daisy,next_to,sofa).
clue(emily,on,carpet).
clue(frank,not_next_to,bed).
clue(frank,in_row,1).
clue(grace,object_in_col,box).
clue(henry,not_in_corner).