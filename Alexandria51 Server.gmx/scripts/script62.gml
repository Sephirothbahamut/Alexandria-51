/// rc_write_actions(source)
var source = verify(argument0, var_t.object_t, false, Character);
/// ______________________________________
    
with(Button) { instance_destroy(); }
var buffer = manager_create_buffer(net_t.actions_wait);
rc_buffer_write_action(buffer, source.action_1, source.action_1_data);
rc_buffer_write_action(buffer, source.action_2, source.action_2_data);
manager_send(buffer);
buffer_delete(buffer);

show_debug_message("============================");
show_debug_message(source.action_1);
if(source.action_1_data != noone) { show_debug_message(source.action_1_data); }
show_debug_message(source.action_2);
if(source.action_2_data != noone) { show_debug_message(source.action_2_data); }
show_debug_message("____________________________");
