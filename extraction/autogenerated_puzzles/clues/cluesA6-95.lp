%%%% Clues
clue(n_persons_on,carpet,0).
clue(alice,not_next_to,sofa).
clue(alice,in_corner).
clue(alice,not_in_room_with_female).
clue(bernard,in_same_room,daisy).
clue(bernard,next_to,closet).
clue(carol,west_of,alice).
clue(carol,in_corner).
clue(carol,in_top_row).
clue(daisy,in_same_room,emily).
clue(daisy,not_in_same_room,carol).
clue(daisy,on,chair).
clue(emily,not_in,bathroom).
clue(emily,object_in_row,closet).
clue(emily,not_in_same_room,alice).
clue(emily,not_in_corner).