# Extraction for puzzle rooms
### How to do it
On the link https://murdoku.umdiabonito.com.br you can find a gridbuilder and draw in objects in the room.
After that is done, the json can be extracted through chrome-developer-tools -> Application -> Local storage -> https://murdoku.umdiabonito.com.br/

the script.py file than extracts the grid/room/object and necessary locations from it and renders the puzzles into .lp files.

### Limitations
Not al objects and room names are available here. So we have to be a little creative with that. or edit the json files before processing it with a script. (carpet is not available as object for example).

Suspect/victim genders can be added by hand in the puzzles state object:
```json
    "persons": ['male','female','male','male','male','male','female']
```
The script translates to appropiate names for gender. (TODO)

### Experiment
- The experiment notebook uses a separate solve-experiment.lp file to run the different puzzles. Python collects the necessary files for each puzzle.
- TODO: distinguish between automated puzzles and manually inserted puzzles.
- Some statistics are already extracted
    - grounding time
    - solving time
    - total time
    - size of the puzzle grid
    - number of clues in the puzzle
    - ...
