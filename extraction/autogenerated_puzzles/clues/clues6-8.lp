%%%% Clues
clue(alphonse,next_to,carpet).
clue(alphonse,not_in_corner).
clue(bernard,not_alone).
clue(bernard,next_to,box).
clue(bernard,in_left_column).
clue(bernard,n_persons_on,carpet,1).
clue(charlie,next_to,carpet).
clue(charlie,west_of,daniel).
clue(charlie,not_in_corner).
clue(daniel,not_in_same_room,alphonse).
clue(daniel,in_same_room,charlie).
clue(daniel,next_to,sofa).
clue(emily,not_in_same_room,daniel).
clue(emily,in,livingroom).