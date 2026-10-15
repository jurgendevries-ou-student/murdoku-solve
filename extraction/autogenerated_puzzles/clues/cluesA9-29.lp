%%%% Clues
clue(n_persons_on,chair,1).
clue(alice,not_in_corner).
clue(alice,in_column,0).
clue(bernard,only_one_on,sofa).
clue(bernard,south_of,daniel).
clue(charlie,no_object_in_row,box).
clue(charlie,on,carpet).
clue(daniel,n_east_of,alice,2).
clue(edward,not_next_to,statue).
clue(florence,n_south_of,bernard,6).
clue(george,in_same_room,florence).
clue(george,not_in_corner).
clue(george,n_east_of,florence,2).
clue(henry,not_in_room_with_female).
clue(henry,n_north_of,george,3).