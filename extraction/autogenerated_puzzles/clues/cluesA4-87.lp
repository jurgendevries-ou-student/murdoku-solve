%%%% Clues
clue(n_persons_on,carpet,2).
clue(alphonse,not_in_same_room,bonnie).
clue(bonnie,not_in_same_room,charlie).
clue(bonnie,next_to,bed).
clue(bonnie,in_right_column).
clue(bonnie,south_of,charlie).
clue(charlie,in_same_room,alphonse).
clue(charlie,not_on,bed).
clue(charlie,next_to,carpet).