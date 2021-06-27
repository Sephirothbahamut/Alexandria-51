/// rc_chose_action_dir(action)
var action = verify_range(argument0, var_t.uint_t, 0, action_t.COUNT);
/// ______________________________________
var rc = Rooms_controller;

if(rc.action_1 == action_t.COUNT)
    {
    rc.action_1 = action;
    rc_spawn_dir_buttons(1);
    }
else
    {
    rc.action_2 = action;
    rc_spawn_dir_buttons(2);
    }
    
