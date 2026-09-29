import json

names_male = ['alphonse', 'bernard', 'charlie', 'daniel', 'edward', 'frank', 'george', 'henry', 'ivan', 'james', 'keith', 'louis', 'mike', 'victor']
names_female = ['alice', 'bonnie', 'carol', 'daisy', 'emily', 'florence', 'grace', 'hannah', 'isla', 'jane', 'kate', 'lily', 'mary', 'victoria']
def generate_murdoku_world_asp(puzzle, cols, rooms, objects, persons):
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
    for i, person in enumerate(persons):
        suspect = True if i < (len(persons)-1) else False
        is_male = True if person == 'male' else False
        name = names_female[i] if suspect else names_female[-1]
        if is_male:
            name = names_male[i] if suspect else names_male[-1]
        lp.append(f'{'suspect' if suspect else 'victim'}({name}).')
        lp.append(f'{'male' if is_male else 'female'}({name}).')

    print(lp)
    return lp


def convert_to_asp(puzzle_num):
    # get puzzle in json format
    with open(f'./extraction/puzzles.json', 'r') as f:
        data = json.load(f)

    # extract puzzle data
    puzzle = data['puzzles'][f'{puzzle_num}']['state']
    cols = puzzle['cols']

    # extract rooms
    rooms = {}
    for k,v in puzzle['rooms'].items():
        rooms.setdefault(v, []).append(k)

    # extract objects
    objects = {}
    for k,v in puzzle['furniture'].items():
        obj = v['type']
        if obj == 'sofa':
            obj = 'chair'
        if obj == 'vase':
            obj = 'plant'
        if obj == 'bookshelf':
            obj = 'shelf'
        objects.setdefault(obj, []).append(k)

    for k in puzzle['windows'].keys():
        objects.setdefault('window', []).append(k)

    persons = puzzle['persons']

    lp = generate_murdoku_world_asp(puzzle, cols, rooms, objects, persons)

    with open(f'./extraction/puzzles/puzzleM{puzzle_num}.lp', 'w') as f:
        f.write("\n".join(lp))

convert_to_asp(21)
