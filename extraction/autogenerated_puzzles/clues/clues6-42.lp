%%%% Clues
clue(alphonse,in_row,5).
clue(alphonse,in_corner).
clue(bernard,in_same_room,charlie).
clue(charlie,not_next_to,bed).
clue(charlie,in_corner).
clue(daisy,in_same_room,emily).
clue(daisy,in_top_row).
clue(emily,not_in_same_room,alphonse).
clue(emily,next_to,bed).
clue(emily,in_same_room,charlie).
clue(emily,n_persons_on,sofa,1).
clue(emily,in_column,2).