%%%% Clues
clue(n_persons_on,bed,0).
clue(alphonse,not_in_same_room,charlie).
clue(alphonse,in_corner).
clue(alphonse,not_in_same_room,daniel).
clue(alphonse,in,livingroom).
clue(alphonse,north_of,bonnie).
clue(bonnie,north_of,daniel).
clue(bonnie,in,bathroom).
clue(charlie,not_in_same_room,daniel).
clue(charlie,not_in_corner).
clue(charlie,in_row,1).
clue(daniel,not_alone).
clue(daniel,next_to,carpet).
clue(daniel,not_on,bed).
clue(daniel,not_next_to,bed).
clue(daniel,not_in_corner).