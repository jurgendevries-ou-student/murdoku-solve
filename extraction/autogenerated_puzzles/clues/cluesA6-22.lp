%%%% Clues
clue(n_persons_on,sofa,0).
clue(alice,not_in_room_with_female).
clue(alice,in_corner).
clue(alice,east_of,charlie).
clue(bonnie,not_in_corner).
clue(bonnie,n_west_of,emily,1).
clue(charlie,next_to,sofa).
clue(charlie,south_of,bonnie).
clue(daisy,in_row,4).
clue(daisy,in_column,0).
clue(emily,not_in_corner).