import random
import itertools
import math
import time
import os
import re

def count_people_in_room(rooms, room_num, person_positions):
    n_people = 0
    #print(person_positions)
    for [i, j] in person_positions:
        if rooms[i][j] == room_num:
            n_people += 1
    return n_people

def get_clues_pers(clues, pers):
    clues_pers = []
    for clue in clues:
        if 'pers' in clue and clue['pers'] == pers:
            clues_pers.append(clue)
    return clues_pers

def get_possible_cells_pers(size, rooms, object_positions, person_genders, clues, pers):
    possible_cells = []
    clues_pers = get_clues_pers(clues, pers)
    for i in range(size):
        for j in range(size):
            person_positions_single_pers = size * [[0, 0]]
            person_positions_single_pers[pers] = [i, j]
            add_to_possibilities = object_positions[i][j] >= 0
            for clue in clues_pers:
                if "pers2" not in clue and clue['type'] in ['next_to', 'not_next_to', 'on', 'in', 'in_top_row', 'in_bottom_row', 'in_left_column', 'in_right_column', 'not_in', 'in_corner', 'not_in_corner', 'not_on', 'in_column', 'in_row']:
                    add_to_possibilities = add_to_possibilities and check_clue(size, rooms, person_positions_single_pers, object_positions, person_genders, clue)
            if add_to_possibilities:
                possible_cells.append([i, j])
    return possible_cells


class _Cap(Exception): pass

def check_solutions(size, rooms, object_positions, person_genders, clues, limit=None):
    solutions = []
    n_solutions = 0
    valid_cells = []
    
    for pers in range(size):
        valid_cells.append((pers, get_possible_cells_pers(size, rooms, object_positions, person_genders, clues, pers)))

    valid_cells.sort(key=lambda x: len(x[1]))

    placement_order = {}
    for index, (pers, _) in enumerate(valid_cells):
        placement_order[pers] = index

    clues_by_index = {i: [] for i in range(size + 1)}
    
    # These clues require iterating over all persons on the board, 
    # so they must wait until index == size (the leaf nodes)
    global_clue_types = [
        'no_empty_room', 'only_one_on', 'n_persons_on', 
        'in_room_with_multiple_females', 'in_room_with_multiple_males', 
        'next_to_with_someone_else', 'alone', 'not_alone',
        'in_room_with_female', 'not_in_room_with_female', 'in_room_with_male', 'not_in_room_with_male',
        'someone_else_in_room_on', 'someone_else_in_room_next_to'
    ]
                         
    for clue in clues:
        if clue['type'] in global_clue_types:
            clues_by_index[size].append(clue) 
        elif 'pers2' in clue:
            max_index = max(placement_order[clue['pers']], placement_order[clue['pers2']])
            clues_by_index[max_index].append(clue)
        else:
            clues_by_index[placement_order[clue['pers']]].append(clue)

    used_rows = [False] * size
    used_cols = [False] * size

    # Maintain a running position list instead of generating test configurations at the end
    # Initialize with [-1, -1] so partial checks don't hit IndexErrors
    running_positions = [[-1, -1] for _ in range(size)]

    def backtrack(index):
        nonlocal n_solutions
        if index == size:
            # Check victim logic (victim is always person index size-1)
            pos_victim = running_positions[size-1]
            room_victim = rooms[pos_victim[0]][pos_victim[1]]
            if count_people_in_room(rooms, room_victim, running_positions) != 2:
                return

            # Evaluate remaining global clues
            for clue in clues_by_index[size]:
                if not check_clue(size, rooms, running_positions, object_positions, person_genders, clue):
                    return
            
            n_solutions += 1
            solutions.append([p[:] for p in running_positions])
            if limit is not None and n_solutions >= limit:
                raise _Cap()
            return

        pers, possible_cells = valid_cells[index]

        for r, c in possible_cells:
            if not used_rows[r] and not used_cols[c]:
                # 1. Place person
                used_rows[r] = True
                used_cols[c] = True
                running_positions[pers] = [r, c]

                # 2. FORWARD PRUNING: Do all future persons still have at least one free cell?
                future_is_viable = True
                for next_index in range(index + 1, size):
                    next_pers, next_possible_cells = valid_cells[next_index]
                    # Check if next_pers has ANY cell where row and col are both unused
                    if not any(not used_rows[nr] and not used_cols[nc] for nr, nc in next_possible_cells):
                        future_is_viable = False
                        break
                
                # 3. INCREMENTAL CLUE CHECK: Only check clues if the grid is still viable
                if future_is_viable:
                    valid_so_far = True
                    for clue in clues_by_index[index]:
                        if not check_clue(size, rooms, running_positions, object_positions, person_genders, clue):
                            valid_so_far = False
                            break
                    
                    # 4. Branch further
                    if valid_so_far:
                        backtrack(index + 1)

                # 5. Remove person (backtrack step)
                used_rows[r] = False
                used_cols[c] = False
                running_positions[pers] = [-1, -1]

    try:
        backtrack(0)
    except _Cap:
        pass
    return n_solutions, solutions

def check_solution(size, rooms, object_positions, person_genders, clues, person_positions_test, printstats = False):
    is_solution = True
    n_drops = len(clues) * [0]
    for i in range(size):
        row = person_positions_test[i][0]
        col = person_positions_test[i][1]
        is_solution = is_solution and (object_positions[row][col] >= 0)
    if printstats:
        print("person ", i, " on object:", is_solution)
    pos_victim = person_positions_test[size-1]
    room_victim = rooms[pos_victim[0]][pos_victim[1]]
    people_in_room_victim = count_people_in_room(rooms, room_victim, person_positions_test)
    is_solution = is_solution and (people_in_room_victim == 2)
    if printstats:
        print("victim in room with 1 other:", is_solution, ", because ", people_in_room_victim, " in room.")

    if len(clues) > 0:
        for i, clue in enumerate(clues):
            is_solution = is_solution and check_clue(size, rooms, person_positions_test, object_positions, person_genders, clue)
            if is_solution: 
                n_drops[i] += 1
            if printstats:
                print("clue ", i, clue, ": ", is_solution)
    return is_solution

def check_clue(size, rooms, person_positions, object_positions, person_genders, clue):
    type = clue["type"]
    if type == 'in_same_room':
        return in_same_room(rooms, person_positions, clue["pers"], clue["pers2"])
    if type == 'not_in_same_room':
        return not_in_same_room(rooms, person_positions, clue["pers"], clue["pers2"])
    if type == 'next_to':
        return next_to(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'not_next_to':
        return not_next_to(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'on':
        return on(person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'not_on':
        return not_on(person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'in':
        return in_room(rooms, person_positions, clue["pers"], clue["room"])
    if type == 'not_in':
        return not_in_room(rooms, person_positions, clue["pers"], clue["room"])
    if type == 'in_room_with_female':
        return in_room_with_female(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'not_in_room_with_female':
        return not_in_room_with_female(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'in_room_with_male':
        return in_room_with_male(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'not_in_room_with_male':
        return not_in_room_with_male(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'alone':
        return alone(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'not_alone':
        return not_alone(size, rooms, person_positions, person_genders, clue["pers"])
    if type == 'in_corner':
        return in_corner(size, rooms, person_positions, clue["pers"])
    if type == 'not_in_corner':
        return not_in_corner(size, rooms, person_positions, clue["pers"])
    if type == 'in_left_column':
        return in_left_column(size, person_positions, clue["pers"])
    if type == 'in_right_column':
        return in_right_column(size, person_positions, clue["pers"])
    if type == 'in_top_row':
        return in_top_row(size, person_positions, clue["pers"])
    if type == 'in_bottom_row':
        return in_bottom_row(size, person_positions, clue["pers"])
    if type == 'in_column':
        return in_column(person_positions, clue["pers"], clue["n"])
    if type == 'in_row':
        return in_row(person_positions, clue["pers"], clue["n"])
    if type == 'east_of':
        return east_of(person_positions, clue["pers"], clue["pers2"])
    if type == 'west_of':
        return west_of(person_positions, clue["pers"], clue["pers2"])
    if type == 'north_of':
        return north_of(person_positions, clue["pers"], clue["pers2"])
    if type == 'south_of':
        return south_of(person_positions, clue["pers"], clue["pers2"])
    if type == 'n_east_of':
        return n_east_of(person_positions, clue["pers"], clue["pers2"], clue["n"])
    if type == 'n_west_of':
        return n_west_of(person_positions, clue["pers"], clue["pers2"], clue["n"])
    if type == 'n_north_of':
        return n_north_of(person_positions, clue["pers"], clue["pers2"], clue["n"])
    if type == 'n_south_of':
        return n_south_of(person_positions, clue["pers"], clue["pers2"], clue["n"])
    if type == 'only_one_on':
        return only_one_on(person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'n_persons_on':
        return n_persons_on(person_positions, object_positions, clue["obj"], clue["n"])
    if type == 'no_empty_room':
        return no_empty_room(rooms, person_positions)
    if type == 'in_room_with_multiple_females':
        return in_room_with_multiple_females(size, rooms, person_positions, person_genders, clue["pers"], clue["n"])
    if type == 'in_room_with_multiple_males':
        return in_room_with_multiple_males(size, rooms, person_positions, person_genders, clue["pers"], clue["n"])
    if type == 'next_to_with_someone_else':
        return next_to_with_someone_else(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'object_in_col':
        return object_in_col(size, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'no_object_in_col':
        return no_object_in_col(size, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'object_in_row':
        return object_in_row(size, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'no_object_in_row':
        return no_object_in_row(size, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'someone_else_in_room_on':
        return someone_else_in_room_on(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'someone_else_in_room_next_to':
        return someone_else_in_room_next_to(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"])
    if type == 'object_in_same_room':
        return object_in_same_room(size, rooms, person_positions, object_positions, clue["pers"], clue["obj"]) 
    return False


def in_same_room(rooms, person_positions, pers, pers2):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
#    print(cellA, cellB, rooms[cellA[0]][cellA[1]], rooms[cellB[0]][cellB[1]])
    return rooms[cellA[0]][cellA[1]] == rooms[cellB[0]][cellB[1]]

def not_in_same_room(rooms, person_positions, pers, pers2):
    return not in_same_room(rooms, person_positions, pers, pers2)

def next_to(size, rooms, person_positions, object_positions, pers, obj):
    cell = person_positions[pers]
    next_to = False
    if cell[0] < size - 1:
        next_to = next_to or rooms[cell[0]][cell[1]] == rooms[cell[0]+1][cell[1]] and object_positions[cell[0]+1][cell[1]] == obj 
    if cell[0] > 0:
        next_to = next_to or rooms[cell[0]][cell[1]] == rooms[cell[0]-1][cell[1]] and object_positions[cell[0]-1][cell[1]] == obj
    if cell[1] < size - 1:
        next_to = next_to or rooms[cell[0]][cell[1]] == rooms[cell[0]][cell[1]+1] and object_positions[cell[0]][cell[1]+1] == obj
    if cell[1] > 0:
        next_to = next_to or rooms[cell[0]][cell[1]] == rooms[cell[0]][cell[1]-1] and object_positions[cell[0]][cell[1]-1] == obj
    return next_to

def not_next_to(size, rooms, person_positions, object_positions, pers, obj):
    return not next_to(size, rooms, person_positions, object_positions, pers, obj)

def on(person_positions, object_positions, pers, obj):
    cell = person_positions[pers]
    return object_positions[cell[0]][cell[1]] == obj

def not_on(person_positions, object_positions, pers, obj):
    return not on(person_positions, object_positions, pers, obj)

def in_corner(size, rooms, person_positions, pers):
    cell = person_positions[pers]
    against_vertical_wall = False
    if cell[1] == 0 or cell[1] == size - 1:
        against_vertical_wall = True
    else:
        if rooms[cell[0]][cell[1]] != rooms[cell[0]][cell[1]-1] or rooms[cell[0]][cell[1]] != rooms[cell[0]][cell[1]+1]:
            against_vertical_wall = True
    against_horizontal_wall = False
    if cell[0] == 0 or cell[0] == size - 1:
        against_horizontal_wall = True
    else:
        if rooms[cell[0]][cell[1]] != rooms[cell[0]-1][cell[1]] or rooms[cell[0]][cell[1]] != rooms[cell[0]+1][cell[1]]:
            against_horizontal_wall = True
    return against_horizontal_wall and against_vertical_wall

def not_in_corner(size, rooms, person_positions, pers):
    return not in_corner(size, rooms, person_positions, pers)

def in_room(rooms, person_positions, pers, room):
    cell = person_positions[pers]
    return rooms[cell[0]][cell[1]] == room

def not_in_room(rooms, person_positions, pers, room):
    return not in_room(rooms, person_positions, pers, room)

def in_room_with_female(size, rooms, person_positions, person_genders, pers):
    cellA = person_positions[pers]
    for i in range(size):
        cellB = person_positions[i]
        if i != pers and person_genders[i] == 'female' and rooms[cellA[0]][cellA[1]] == rooms[cellB[0]][cellB[1]]:
            return True
    return False

def not_in_room_with_female(size, rooms, person_positions, person_genders, pers):
    return not in_room_with_female(size, rooms, person_positions, person_genders, pers)

def in_room_with_male(size, rooms, person_positions, person_genders, pers):
    cellA = person_positions[pers]
    for i in range(size):
        cellB = person_positions[i]
        if i != pers and person_genders[i] == 'male' and rooms[cellA[0]][cellA[1]] == rooms[cellB[0]][cellB[1]]:
            return True
    return False

def not_in_room_with_male(size, rooms, person_positions, person_genders, pers):
    return not in_room_with_male(size, rooms, person_positions, person_genders, pers)

def alone(size, rooms, person_positions, person_genders, pers):
    return not_in_room_with_female(size, rooms, person_positions, person_genders, pers) and not_in_room_with_male(size, rooms, person_positions, person_genders, pers)

def not_alone(size, rooms, person_positions, person_genders, pers):
    return in_room_with_female(size, rooms, person_positions, person_genders, pers) or in_room_with_male(size, rooms, person_positions, person_genders, pers)

def in_left_column(size, person_positions, pers):
    return in_column(person_positions, pers, 0)

def in_right_column(size, person_positions, pers):
    return in_column(person_positions, pers, size - 1)

def in_top_row(size, person_positions, pers):
    return in_row(person_positions, pers, 0)

def in_bottom_row(size, person_positions, pers):
    return in_row(person_positions, pers, size - 1)

def in_column(person_positions, pers, n):
    cell = person_positions[pers]
    return cell[1] == n

def in_row(person_positions, pers, n):
    cell = person_positions[pers]
    return cell[0] == n

def east_of(person_positions, pers, pers2):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellA[1] > cellB[1] 

def west_of(person_positions, pers, pers2):
    return not east_of(person_positions, pers, pers2)

def north_of(person_positions, pers, pers2):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellA[0] < cellB[0] 

def south_of(person_positions, pers, pers2):
    return not north_of(person_positions, pers, pers2)

def n_east_of(person_positions, pers, pers2, n):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellA[1] - cellB[1] == n

def n_west_of(person_positions, pers, pers2, n):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellB[1] - cellA[1] == n

def n_north_of(person_positions, pers, pers2, n):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellB[0] - cellA[0] == n

def n_south_of(person_positions, pers, pers2, n):
    cellA = person_positions[pers]
    cellB = person_positions[pers2]
    return cellA[0] - cellB[0] == n

def only_one_on(person_positions, object_positions, pers, obj):
    return on(person_positions, object_positions, pers, obj) and n_persons_on(person_positions, object_positions, obj, 1)

def n_persons_on(person_positions, object_positions, obj, n):
    n_on = 0
    for pers in range(len(person_positions)):
        if on(person_positions, object_positions, pers, obj):
            n_on += 1
    return n_on == n

def no_empty_room(rooms, person_positions):
    room_nums = list(set(itertools.chain(*rooms)))
    has_empty_room = False
    for room_num in room_nums:
        if count_people_in_room(rooms, room_num, person_positions) == 0:
            has_empty_room = True
    return not has_empty_room

def in_room_with_multiple_females(size, rooms, person_positions, person_genders, pers, n):
    cellA = person_positions[pers]
    n_females = 0
    for pers2 in range(size):
        cellB = person_positions[pers2]
        if pers2 != pers and person_genders[pers2] == 'female' and rooms[cellA[0]][cellA[1]] == rooms[cellB[0]][cellB[1]]:
            n_females += 1
    return n_females == n

def in_room_with_multiple_males(size, rooms, person_positions, person_genders, pers, n):
    cellA = person_positions[pers]
    n_males = 0
    for pers2 in range(size):
        cellB = person_positions[pers2]
        if pers2 != pers and person_genders[pers2] == 'male' and rooms[cellA[0]][cellA[1]] == rooms[cellB[0]][cellB[1]]:
            n_males += 1
    return n_males == n

def next_to_with_someone_else(size, rooms, person_positions, object_positions, pers, obj):
    if next_to(size, rooms, person_positions, object_positions, pers, obj):
        objlist = []
        for i in range(len(object_positions)):
            for j in range(len(object_positions[i])):
                if object_positions[i][j] == obj:
                    objlist.append([i, j])
        if len(objlist) > 0:
            for object in objlist:
                new_object_positions = []
                for i in range(size):
                    new_object_positions.append([])
                    for j in range(size):
                        new_object_positions[i].append(0)
                new_object_positions[object[0]][object[1]] = obj
                for pers2 in range(size):
                    if pers != pers2 and next_to(size, rooms, person_positions, new_object_positions, pers, obj) and next_to(size, rooms, person_positions, new_object_positions, pers2, obj):
                        return True
        return False
    else:
        return False

def object_in_col(size, person_positions, object_positions, pers, obj):
    col = person_positions[pers][1]
    for i in range(size):
        if object_positions[i][col] == obj:
            return True
    return False

def no_object_in_col(size, person_positions, object_positions, pers, obj):
    return not object_in_col(size, person_positions, object_positions, pers, obj)

def object_in_row(size, person_positions, object_positions, pers, obj):
    row = person_positions[pers][0]
    for i in range(size):
        if object_positions[row][i] == obj:
            return True
    return False

def no_object_in_row(size, person_positions, object_positions, pers, obj):
    return not object_in_row(size, person_positions, object_positions, pers, obj)

def someone_else_in_room_on(size, rooms, person_positions, object_positions, pers, obj):
    for pers2 in range(size):
        if pers2 != pers and in_same_room(rooms, person_positions, pers, pers2) and on(person_positions, object_positions, pers2, obj):
            return True
    return False

def someone_else_in_room_next_to(size, rooms, person_positions, object_positions, pers, obj):
    cell = person_positions[pers]
    for pers2 in range(size):
        cell2 = person_positions[pers2]
        if pers != pers2 and rooms[cell[0]][cell[1]] == rooms[cell2[0]][cell2[1]]:
            if next_to(size, rooms, person_positions, object_positions, pers2, obj):
                return True
    return False

def object_in_same_room(size, rooms, person_positions, object_positions, pers, obj):
    cell = person_positions[pers]
    room = rooms[cell[0]][cell[1]]
    for i in range(size):
        for j in range(size):
            if rooms[i][j] == room and object_positions[i][j] == obj:
                return True
    return False

def interpret_puzzle(puzzle_file, clue_file):
    with open(puzzle_file) as file:
        lines = [line.rstrip() for line in file]

    room_rules = []
    in_room_rules = []
    object_rules = []
    can_not_be_occupied_rules = []
    contains_rules = []
    suspect_rules = []
    male_rules = []
    female_rules = []
    victim_rules = []
    for line in lines:
        if not (line == "" or line[:1] == "%"):
            if "#const" in line:
                size = int(re.search(r"#const\s+n\s*=\s*(\d+)", line).group(1)) + 1
            else:
                m = re.match(r"\s*(\w+)\((.*)\)\.?\s*$", line)
                if m:
                    if m.group(1) == 'room':
                        room_rules.append(m.group(2))
                    elif m.group(1) == 'in_room':
                        in_room_rules.append(m.group(2))
                    elif m.group(1) == 'object':
                        object_rules.append(m.group(2))
                    elif m.group(1) == 'can_not_be_occupied':
                        can_not_be_occupied_rules.append(m.group(2))
                    elif m.group(1) == 'contains':
                        contains_rules.append(m.group(2))
                    elif m.group(1) == 'suspect':
                        suspect_rules.append(m.group(2))
                    elif m.group(1) == 'male':
                        male_rules.append(m.group(2))
                    elif m.group(1) == 'female':
                        female_rules.append(m.group(2))
                    elif m.group(1) == 'victim':
                        victim_rules.append(m.group(2))

    room_dict = {}    
    for i, room in enumerate(room_rules):
        room_dict[room] = i

    rooms = []
    for i in range(size):
        rooms.append([])
        for j in range(size):
            rooms[i].append(0)
    for ir in in_room_rules:
        ir_args = ir.split(",")
        rooms[int(ir_args[0])][int(ir_args[1])] = room_dict[ir_args[2]]

    if len(can_not_be_occupied_rules) == 0:
        obj_can_not_be_occupied = ['tv','plant','table','register','box','shelf','bookshelf']
    else:
        obj_can_not_be_occupied = []
    obj_can_be_occupied = []
    for obj in object_rules:
        if obj in can_not_be_occupied_rules:
            obj_can_not_be_occupied.append(obj)
        else:
            obj_can_be_occupied.append(obj)

    
    
    obj_dict = {}    
    for i, obj in enumerate(obj_can_be_occupied):
        obj_dict[obj] = i+1
    for i, obj in enumerate(obj_can_not_be_occupied):
        obj_dict[obj] = -i-1

    object_positions = []
    for i in range(size):
        object_positions.append([])
        for j in range(size):
            object_positions[i].append(0)
    for cr in contains_rules:
        cr_args = cr.split(",")
        object_positions[int(cr_args[0])][int(cr_args[1])] = obj_dict[cr_args[2]]

    person_genders = []
    person_dict = {}
    for i, s in enumerate(sorted(suspect_rules)):
        person_dict[s] = i
        if s in female_rules:
            person_genders.append('female')
        elif s in male_rules:
            person_genders.append('male')
    for v in sorted(victim_rules):
        person_dict[v] = size - 1
        if v in female_rules:
            person_genders.append('female')
        elif v in male_rules:
            person_genders.append('male')

    with open(clue_file) as file:
        lines = [line.rstrip() for line in file]

    clue_rules = []
    for line in lines:
        if not (line == "" or line[:1] == "%"):
            m = re.match(r"\s*(\w+)\((.*)\)\.?\s*$", line)
            if m:
                if m.group(1) == 'clue':
                    clue_rules.append(m.group(2))

    clues = []

    for clue in clue_rules:
        clue_dict = {}
        clue_args = clue.split(",")
        for i, ca in enumerate(clue_args):
            if ca in suspect_rules and not "pers" in clue_dict: 
                clue_dict["pers"] = person_dict[ca]
            elif ca in suspect_rules and "pers" in clue_dict: 
                clue_dict["pers2"] = person_dict[ca]
            elif ca in obj_dict: 
                clue_dict["obj"] = obj_dict[ca]
            elif ca in room_dict: 
                clue_dict["room"] = room_dict[ca]
            elif ca.isdigit(): 
                clue_dict["n"] = int(ca)
            else: 
                clue_dict["type"] = ca
        clues.append(clue_dict)
    return size, rooms, object_positions, person_genders, clues

def find_solutions(pfile, cfile):
    start_interpret = time.time()
    size, rooms, object_positions, person_genders, clues = interpret_puzzle(pfile, cfile)
    interpret_time = time.time() - start_interpret 
    start_solve = time.time()
    n, solutions = check_solutions(size, rooms, object_positions, person_genders, clues)
    solve_time = time.time() - start_solve
    return n, interpret_time, solve_time, solutions, len(clues)


def print_puzzle(size, rooms, object_positions, person_genders, clues):
    for row in range(size):
        print(rooms[row])

    print('\nGenders:')
    print(person_genders)

    print('\nMap of objects:')
    for row in range(size):
        print(object_positions[row])

    print('\nClues:')
    for clue in clues:
        print(clue)

    nsol = check_solutions(size, rooms, object_positions, person_genders, clues)
    print(f'\nSolutions: {nsol}')