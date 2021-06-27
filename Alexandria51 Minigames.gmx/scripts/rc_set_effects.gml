/// rc_set_effects(buffer)
var buffer = argument0;
/// ______________________________________
scrolling_text("Rooms effects running phase");
with(Rooms_controller)
    {//Client side of server's Rooms_controller.event_user(2)
    
    var count = buffer_read(buffer, buffer_u8);
    if(count != ds_list_size(characters_list)) { show_error("Something went *really* wrong", 1); }
    
    for(var u = 0; u < count; u++)
        {
        var character = characters_list[|u];
        character.b_minigame_won = buffer_readu8(buffer);
        }
    }
    
rc_run_effects();
rc_update_broom();

