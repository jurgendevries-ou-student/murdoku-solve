%%%% Clues
clue(n_persons_on,carpet,0).
clue(n_persons_on,bed,1).
clue(alice,in_top_row).
clue(bonnie,next_to,closet).
clue(charlie,next_to,chair).
clue(daniel,n_east_of,george,2).
clue(daniel,n_west_of,florence,1).
clue(daniel,not_in_room_with_male).
clue(emily,not_in_same_room,charlie).
clue(florence,in_corner).
clue(florence,not_next_to,bed).
clue(george,not_in_same_room,emily).
clue(george,next_to,statue).