/// rc_chose_action(action)
var action = verify_range(argument0, var_t.uint_t, 0, action_t.COUNT);
/// ______________________________________
var rc = Rooms_controller.id;

if(rc.action_1 == action_t.COUNT)
    {
    rc.action_1 = action;
    }
else
    {
    rc.action_2 = action;
    
    
    //Both actions have been chosen
    with(Button) { instance_destroy(); }
    var buffer = manager_create_buffer(net_t.actions_wait);
    rc_buffer_write_action(buffer, rc.action_1, rc.action_1_data);
    rc_buffer_write_action(buffer, rc.action_2, rc.action_2_data);
    
    manager_send(buffer);
    buffer_delete(buffer);
    }
