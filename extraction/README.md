# Extraction for puzzle rooms
### How to do it
On the link https://murdoku.umdiabonito.com.br you can find a gridbuilder and draw in objects in the room.
After that is done, the json can be extracted through chrome-developer-tools -> Application -> Local storage -> https://murdoku.umdiabonito.com.br/

the script.py file than extracts the grid/room/object and necessary locations from it and renders the puzzles into .lp files.

### Limitations
Not al objects and room names are available here. So we have to be a little creative with that. or edit the json files before processing it with a script.

### Suspects can be added by hand