/// rooms_controller_char_from_client(u_pid)
var u_pid = verify(argument0, var_t.uint_t);
/// ______________________________________

for(var u = 0; u < ds_list_size(Rooms_controller.characters_list); u++)
    {
    var character = Rooms_controller.characters_list[| u];
    if(character.client_owner.u_pid == u_pid) { return character; }
    }
return noone;
