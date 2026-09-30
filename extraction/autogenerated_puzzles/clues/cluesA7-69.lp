%%%% Clues
clue(n_persons_on,bed,1).
clue(alice,not_in_corner).
clue(alice,alone).
clue(alice,in_row,2).
clue(bernard,not_next_to,closet).
clue(bernard,on,carpet).
clue(charlie,not_next_to,carpet).
clue(charlie,not_in,livingroom).
clue(daniel,not_in_same_room,charlie).
clue(daniel,in,bedroom).
clue(daniel,in_right_column).
clue(emily,in_same_room,charlie).
clue(emily,next_to_with_someone_else,carpet).
clue(emily,only_one_on,bed).
clue(frank,not_in_same_room,alice).
clue(frank,in_column,2).