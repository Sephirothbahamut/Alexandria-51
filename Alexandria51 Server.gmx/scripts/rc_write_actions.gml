/// rc_write_actions(source, buffer)
var source = verify(argument0, var_t.object_t, false, Character);
var buffer = argument1;
/// ______________________________________
    
rc_buffer_write_action(buffer, source.action_1, source.action_1_data);
rc_buffer_write_action(buffer, source.action_2, source.action_2_data);
