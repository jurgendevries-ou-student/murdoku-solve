%%%% Clues
clue(alphonse,not_in_corner).
clue(alphonse,n_south_of,charlie,1).
clue(bernard,n_north_of,emily,1).
clue(bernard,in_left_column).
clue(charlie,not_in_same_room,alphonse).
clue(daniel,in_same_room,charlie).
clue(daniel,next_to,closet).
clue(emily,in,livingroom).