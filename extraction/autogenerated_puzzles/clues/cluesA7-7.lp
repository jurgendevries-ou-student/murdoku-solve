%%%% Clues
clue(n_persons_on,carpet,0).
clue(n_persons_on,sofa,0).
clue(alphonse,not_next_to,chair).
clue(alphonse,in_row,1).
clue(bernard,in,bathroom).
clue(bernard,next_to,closet).
clue(bernard,not_in_same_room,alphonse).
clue(charlie,in_room_with_male).
clue(charlie,in,bathroom).
clue(charlie,west_of,alphonse).
clue(charlie,in_column,2).
clue(daisy,not_in_same_room,edward).
clue(daisy,next_to,sofa).
clue(edward,in,hallway).
clue(frank,in_right_column).
clue(frank,not_alone).
clue(frank,not_next_to,carpet).