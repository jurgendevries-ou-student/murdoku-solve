%%%% Clues
clue(n_persons_on,chair,1).
clue(alice,not_in_corner).
clue(bernard,n_north_of,george,2).
clue(bernard,next_to,sofa).
clue(bernard,n_west_of,frank,3).
clue(charlie,in_left_column).
clue(charlie,n_south_of,daniel,1).
clue(daniel,in_same_room,charlie).
clue(daniel,not_on,chair).
clue(edward,in_same_room,alice).
clue(frank,someone_else_in_room_next_to,sofa).
clue(george,n_south_of,daniel,4).
clue(henry,west_of,daniel).
clue(henry,in,bedroom).
clue(ivan,next_to,box).
clue(jesse,in_top_row).
clue(jesse,object_in_col,closet).