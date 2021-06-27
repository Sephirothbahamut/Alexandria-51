/// rc_update_broom()

// Drop from killed players
var rc = Rooms_controller.id;

for(var u = 0; u < ds_list_size(rc.characters_list); u++)
    {
    var character = rc.characters_list[|u];
    if character_is_dead(character) and character.b_has_broom
        {
        character.b_has_broom = false;
        character.mroom_current.b_has_broom = true;
        
        if character.mroom_current.b_revealed
            { scrolling_text(character.client_owner.s_name + " dropped the Broom!"); }
        }
    }
    
// Pick up
for(var u_y = 0; u_y < rc.u_height; u_y++)
    { 
    for(var u_x = 0; u_x < rc.u_width; u_x++)
        {
        var mroom = rc.grid_rooms[# u_x, u_y];
        if mroom.b_has_broom
            {
            var character = noone;
            for(var u = 0; u < ds_list_size(mroom.characters_list); u++)
                {
                var char_tmp = mroom.characters_list[|u];
                if not character_is_dead(char_tmp) { character = char_tmp; }
                }
            if(character != noone)
                {
                mroom.b_has_broom = false;
                character.b_has_broom = true;
                
                if mroom.b_revealed
                    { scrolling_text(character.client_owner.s_name + " picked the Broom!"); }
                }
            }
        }
    }
