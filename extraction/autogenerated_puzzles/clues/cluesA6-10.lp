%%%% Clues
clue(n_persons_on,carpet,3).
clue(alphonse,not_alone).
clue(alphonse,next_to,carpet).
clue(bonnie,not_in_same_room,charlie).
clue(bonnie,in_same_room,emily).
clue(bonnie,north_of,daisy).
clue(bonnie,on,carpet).
clue(charlie,not_next_to,bed).
clue(charlie,on,carpet).
clue(daisy,not_in_same_room,charlie).
clue(daisy,in_same_room,emily).
clue(daisy,not_in,livingroom).
clue(daisy,in_column,2).
clue(emily,in_right_column).
clue(emily,not_alone).
clue(emily,not_in_same_room,charlie).