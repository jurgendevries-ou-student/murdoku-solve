%%%% Clues
clue(n_persons_on,bed,1).
clue(n_persons_on,carpet,0).
clue(alphonse,not_in,kitchen).
clue(alphonse,in_room_with_male).
clue(bernard,in_corner).
clue(bernard,in_row,4).
clue(charlie,not_in_same_room,daniel).
clue(charlie,not_next_to,carpet).
clue(charlie,in_room_with_female).
clue(charlie,not_next_to,sofa).
clue(daniel,no_object_in_col,closet).
clue(daniel,not_in_same_room,alphonse).
clue(daniel,next_to,closet).
clue(daniel,south_of,alphonse).