/// rc_minigame_finished(client, buffer)
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________
//This client/character has finished running actions on the client side
var character = rooms_controller_char_from_pid(client.u_pid);

character.b_done = true;
character.b_minigame_won = buffer_readu8(buffer);

show_debug_message("Client " + string(client.u_pid) + " has finished his minigame");

//if all clients are done, start the next server waits / clients chose actions
//section

var b_all_done = true;
for(var u = 0; u < ds_list_size(Rooms_controller.characters_list); u++)
    {
    var character = Rooms_controller.characters_list[|u]
    
    //if character isn't done AND its client has an actual client connected
    if (not character.b_done) and (character.client_owner.socket != -1) { b_all_done = false; break; }
    }

if(b_all_done)
    {
    with(Character) { b_done = false; }
    show_debug_message("All clients have finished running minigames");
    with(Rooms_controller) { event_user(2); }
    }

