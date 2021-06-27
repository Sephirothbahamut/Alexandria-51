/// rc_action_run_next()
with(Rooms_controller)
    {
    if(u_curr__character == u_first_character)
        {
        if(u_action_round < 1) { u_action_round++; }
        else //This client finished running actions
            {
            manager_send(manager_create_buffer(net_t.actions_run));
            return 0;
            }
        }
    
    var u_tmp = u_curr__character;
    u_curr__character++;
    if(u_curr__character >= ds_list_size(characters_list)) { u_curr__character = 0; }
    
    character_run_action(characters_list[|u_tmp ], u_action_round);
    
    }
