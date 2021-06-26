/// character_goto(character, mroom)
var character     = verify(argument0, var_t.object_t, false, Character);
var mroom_target = verify(argument1, var_t.object_t, false, MRoom);
/// ______________________________________

var mroom_source = character.mroom_current;

//Remove from previous room
if(mroom_source != noone)
    {
    var index = ds_list_find_index(mroom_source.characters_list, character);
    if(index != -1) { ds_list_delete(mroom_source.characters_list, index); }
    }

//Update room
character.mroom_current = mroom_target;

//Add to current room
ds_list_add(mroom_target.characters_list, character);

//Update coordinates of characters on that room
if(mroom_source != noone) { mroom_update_char_coords(mroom_source); }
mroom_update_char_coords(mroom_target);
