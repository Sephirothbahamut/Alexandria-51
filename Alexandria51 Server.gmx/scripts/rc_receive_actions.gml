/// rc_receive_actions(character, buffer)
var character = verify(argument0, var_t.object_t, false, Character);
var buffer = argument1;
/// ______________________________________

character.b_done = true;
rc_read_action(character, 1, buffer);
rc_read_action(character, 2, buffer);


//if all clients are done, start the run actions phase

var b_all_done = true;
for(var u = 0; u < ds_list_size(Rooms_controller.characters_list); u++)
    {
    var character = Rooms_controller.characters_list[|u]
    
    //if character isn't done AND its client has an actual client connected
    if (not character.b_done) 
        and (character.client_owner.socket != -1) 
        and not character_is_dead(character)
        { b_all_done = false; break; }
    }

if(b_all_done)
    {
    with(Character) { b_done = false; }
    show_debug_message("All clients have finished selecting actions");
    with(Rooms_controller) { alarm[0] = 1; }
    }

