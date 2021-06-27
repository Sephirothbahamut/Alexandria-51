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
            break;
        case action_t.talk: 
            scrolling_text(client_owner.s_name + " said: " + data);  
            break;
        case action_t.move: 
            scrolling_text(client_owner.s_name + " is  moving to "      + string(data) + ".");  
            character_action_move(character, data);
            break;
        case action_t.look: 
            scrolling_text(client_owner.s_name + " is looking at "      + string(data) + ".");  
            break;
        case action_t.push: 
            scrolling_text(client_owner.s_name + " is pushing towards " + string(data) + ".");  
            character_action_push(character, data);
            break;
        }
    
    rc_action_run_next();
    }
