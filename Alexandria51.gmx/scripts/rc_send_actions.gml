/// rc_send_actions()
var source = Rooms_controller;
/// ______________________________________
    
with(Button) { instance_destroy(); }
var buffer = manager_create_buffer(net_t.actions_wait);
rc_buffer_write_action(buffer, source.action_1, source.action_1_data);
rc_buffer_write_action(buffer, source.action_2, source.action_2_data);
manager_send(buffer);
buffer_delete(buffer);
