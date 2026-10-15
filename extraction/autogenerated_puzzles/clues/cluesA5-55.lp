%%%% Clues
clue(n_persons_on,chair,1).
clue(alphonse,not_in_corner).
clue(bonnie,not_in_corner).
clue(carol,in_same_room,alphonse).
clue(carol,next_to,chair).
clue(carol,next_to_with_someone_else,statue).
clue(daniel,next_to,statue).