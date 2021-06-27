/// rc_run_effects()


for(var u = 0; u < ds_list_size(Rooms_controller.characters_list); u++)
    {
    var character = rc_character_from_pid(u);
    if not character_is_dead(character)
        {
        var mroom = character.mroom_current;
        switch(mroom.room_type)
            {
            case room_type_t.r_medical:  
                if(character.b_minigame_won) 
                    {
                    character.u_hp++; character.u_hp = clamp(character.u_hp, 0, 2); 
                    scrolling_text("Character " + character.client_owner.s_name + " has healed.");
                    }
                break;
            case room_type_t.r_death:
                if(character.b_minigame_won) { character.u_hp--; }
                else { character.u_hp -= 2; }
                rc_injured_scrolling_text(character);
                break;
            case room_type_t.r_mine_on:
                if not character.b_minigame_won
                    {
                    character.u_hp--; 
                    rc_injured_scrolling_text(character);
                    mroom.b_event_flag = true;
                    }
                break;
            case room_type_t.r_mine_off:
                if character.b_minigame_won
                    {
                    mroom.b_event_flag = true;
                    }
                break;
            }
        }
    }
    
rc_update_flagged_rooms();


//Only part that differs compared to the server side of the same function
var buffer = manager_create_buffer(net_t.minigame_effects);
manager_send (buffer);
buffer_delete(buffer);


