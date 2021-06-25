/// character_goto(character, mroom)
var character     = verify(argument0, var_t.object_t, false, Character);
var mroom_current = verify(argument1, var_t.object_t, false, MRoom);
/// ______________________________________

//Remove from previous room
var index = ds_list_find_index(mroom_current.characters_list, character);
ds_list_delete(mroom_current.characters_list, index);

//Update room
character.mroom_current = mroom_current;

//Reveal room
if(character.image_index == Manager.u_pid)
    { mroom_current.b_revealed = true; }

//Add to current room
ds_list_add(mroom_current.characters_list, character);

//Update coordinates of characters on that room
mroom_update_char_coords(mroom_current);
