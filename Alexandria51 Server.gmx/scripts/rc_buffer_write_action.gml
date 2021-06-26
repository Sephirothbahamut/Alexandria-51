/// rc_buffer_write_action(buffer, action, data)
var buffer = argument0;
var action = argument1;// This is an unsigned int, trust me
var data   = argument2; //Type is action dependant
/// ______________________________________

buffer_write(buffer, buffer_u8, action);

if(action >= action_t.move and action <= action_t.push)
    {
    buffer_write(buffer, buffer_u8, data);
    }
else if(action == action_t.talk)
    {
    buffer_write(buffer, buffer_string, data);
    }
//else { send no data }
