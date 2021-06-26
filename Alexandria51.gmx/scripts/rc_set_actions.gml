/// rc_set_actions(buffer)
var buffer = argument0;
/// ______________________________________
scrolling_text("Actions running phase");
with(Button)  { instance_destroy(); }
with(Textbox) { instance_destroy(); }

with(Rooms_controller)
    {//Client side of server's Rooms_controller.event_user(0)
    u_action_round = -1;



    u_first_character = buffer_read(buffer, buffer_u8);
    u_curr__character = u_first_character;
    
    var count = buffer_read(buffer, buffer_u8);
    if(count != ds_list_size(characters_list)) { show_error("Something went *really* wrong", 1); }
    
    for(var u = 0; u < count; u++)
        {
        var character = characters_list[|u];
        rc_receive_actions(character, buffer);
        }
    }
rc_action_run_next();
