%%%% Clues
clue(n_persons_on,bed,0).
clue(alice,not_in_same_room,charlie).
clue(bonnie,object_in_row,box).
clue(bonnie,not_next_to,bed).
clue(charlie,in_same_room,bonnie).
clue(charlie,next_to,box).
clue(charlie,object_in_row,closet).
clue(daniel,in_corner).
clue(edward,not_in_same_room,george).
clue(edward,not_alone).
clue(edward,object_in_row,box).
clue(edward,no_object_in_col,box).
clue(florence,in_top_row).
clue(florence,in,hallway).
clue(george,in_column,4).
clue(george,north_of,alice).