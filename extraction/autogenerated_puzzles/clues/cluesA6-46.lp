%%%% Clues
clue(n_persons_on,carpet,2).
clue(no_empty_room).
clue(alphonse,only_one_on,chair).
clue(bonnie,not_in_same_room,alphonse).
clue(charlie,next_to,box).
clue(daniel,not_alone).
clue(daniel,n_east_of,alphonse,1).
clue(daniel,n_west_of,charlie,1).
clue(edward,not_in,livingroom).
clue(edward,no_object_in_col,closet).
clue(edward,object_in_row,closet).