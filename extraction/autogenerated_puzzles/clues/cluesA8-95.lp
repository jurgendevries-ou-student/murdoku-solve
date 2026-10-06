%%%% Clues
clue(n_persons_on,bed,0).
clue(alice,not_in,hallway).
clue(bonnie,not_in_corner).
clue(bonnie,in_same_room,charlie).
clue(charlie,in_column,6).
clue(daisy,on,carpet).
clue(emily,in_same_room,daisy).
clue(emily,in_column,7).
clue(frank,in_column,1).
clue(frank,in_row,7).
clue(george,in_column,2).
clue(george,next_to_with_someone_else,carpet).
clue(george,not_in_corner).