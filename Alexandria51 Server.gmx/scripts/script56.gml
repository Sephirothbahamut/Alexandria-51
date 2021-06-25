/// character_run_action(character, u_action_round)
var character = verify(argument0, var_t.object_t, false, Character);
var u_action_round = verify_range(argument1, var_t.uint_t, 0, 1, true, true);
/// ______________________________________

with(character)
    {
    var action;
    var data;
    if(u_action_round == 0) { action = action_1; data = action_1_data; }
    else                    { action = action_2; data = action_2_data; }
    
    switch(action)
        { 
        case action_t.pass: 
            scrolling_text(client_owner.s_name + " did nothing."); 
            alarm[0] = 5 * room_speed;
            break;
        case action_t.pass: 
            scrolling_text(client_owner.s_name + " has spoken.");  
            alarm[0] = 5 * room_speed;
            break;
        }
    }
