%%%% Clues
clue(n_persons_on,sofa,1).
clue(alphonse,not_alone).
clue(bernard,not_in_same_room,alphonse).
clue(bernard,in,kitchen).
clue(bernard,in_row,2).
clue(carol,in_row,0).