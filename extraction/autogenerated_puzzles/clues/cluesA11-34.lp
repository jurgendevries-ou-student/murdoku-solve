%%%% Clues
clue(n_persons_on,sofa,0).
clue(n_persons_on,bed,2).
clue(alice,on,chair).
clue(bonnie,next_to,closet).
clue(bonnie,south_of,george).
clue(bonnie,n_north_of,isla,3).
clue(carol,next_to,chair).
clue(carol,north_of,daniel).
clue(carol,n_south_of,alice,6).
clue(daniel,no_object_in_row,closet).
clue(daniel,not_next_to,bed).
clue(emily,n_south_of,hannah,8).
clue(frank,next_to,box).
clue(george,east_of,frank).
clue(hannah,in_column,7).
clue(isla,in_same_room,emily).
clue(jane,not_in,bedroom).