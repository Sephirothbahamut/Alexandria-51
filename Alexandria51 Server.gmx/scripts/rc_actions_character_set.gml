/// rc_actions_character_set(client, buffer);
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________



var character = rooms_controller_char_from_pid(client.u_pid);
rc_receive_actions(character, buffer);

show_debug_message("Received actions from player " + string(client.u_pid));
