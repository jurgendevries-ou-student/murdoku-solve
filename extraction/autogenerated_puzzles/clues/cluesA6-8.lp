%%%% Clues
clue(n_persons_on,carpet,1).
clue(alphonse,next_to,carpet).
clue(alphonse,not_in_corner).
clue(bernard,not_alone).
clue(bernard,not_in_same_room,emily).
clue(bernard,next_to,box).
clue(bernard,in_left_column).
clue(charlie,next_to,carpet).
clue(charlie,west_of,daniel).
clue(charlie,not_in_corner).
clue(daniel,not_in_same_room,alphonse).
clue(daniel,in_same_room,charlie).
clue(daniel,object_in_row,closet).
clue(daniel,not_in,livingroom).
clue(emily,not_in_same_room,daniel).
clue(emily,in,livingroom).