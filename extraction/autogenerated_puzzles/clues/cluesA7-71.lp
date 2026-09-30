%%%% Clues
clue(n_persons_on,chair,1).
clue(n_persons_on,bed,0).
clue(alphonse,not_in_same_room,daniel).
clue(alphonse,in_right_column).
clue(bonnie,not_next_to,sofa).
clue(bonnie,in_row,4).
clue(carol,next_to,bed).
clue(carol,in_same_room,daniel).
clue(daniel,not_in_same_room,bonnie).
clue(daniel,in_same_room,frank).
clue(emily,not_next_to,statue).
clue(emily,alone).
clue(emily,west_of,carol).
clue(frank,on,chair).