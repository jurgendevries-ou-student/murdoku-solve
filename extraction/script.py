import json

def generate_murdoku_world_asp(puzzle, cols, rooms, objects):
    ''' Generate ASP .lp file from puzzle instructions '''
    lp = []
    lp.append('%% Grid')
    lp.append(f'#const n = {cols-1}.')
    lp.append(f'cell(R,C) :- R = 0..n, C = 0..n.') 
    lp.append('')

    lp.append('%% Rooms')
    for room in rooms.keys():
        lp.append(f'room({room}).')

    lp.append('')
    lp.append('%% Which cells are in the same room')
    for room, location in rooms.items():
        for coord in location:
            lp.append(f'in_room({coord},{room}).')

    lp.append('')
    lp.append('%% objects')
    for obj in objects.keys():
        lp.append(f'object({obj}).')

    lp.append('')
    lp.append('%% object locations')
    for obj, location in objects.items():
        for coord in location:
            lp.append(f'contains({coord},{obj}).')

    lp.append('')
    lp.append('%% persons')
    for k,v in puzzle['persons'].items():
        lp.append(f'{v['type']}({k}).')
        lp.append(f'{v['gender']}({k}).')

    print(lp)
    return lp
#const n = 3.

def convert_to_asp(puzzle_num):
    # get puzzle in json format
    with open(f'./extraction/puzzle{puzzle_num}.json', 'r') as f:
        data = json.load(f)

    # extract puzzle data
    puzzle = data['puzzles']['1']['state']
    cols = puzzle['cols']

    # extract rooms
    rooms = {}
    for k,v in puzzle['rooms'].items():
        rooms.setdefault(v, []).append(k)

    # extract objects
    objects = {}
    for k,v in puzzle['furniture'].items():
        objects.setdefault(v['type'], []).append(k)

    for k in puzzle['windows'].keys():
        objects.setdefault('window', []).append(k)

    lp = generate_murdoku_world_asp(puzzle, cols, rooms, objects)

    with open(f'./extraction/puzzles/puzzle{puzzle_num}.lp', 'w') as f:
        f.write("\n".join(lp))

convert_to_asp(1)