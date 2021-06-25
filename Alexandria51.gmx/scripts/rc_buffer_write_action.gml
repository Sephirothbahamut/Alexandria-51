/// rc_buffer_write_action(buffer, action, data)
var buffer = argument0;
var action = verify_range(argument1, var_t.uint_t, 0, action_t.COUNT);
var data   = argument2; //Type is action dependant
/// ______________________________________

buffer_write(buffer, buffer_u8, action);

if(action >= action_t.move and action <= action_t.look)
    {
    buffer_write(buffer, buffer_u8, data);
    }
else if(action == action_t.talk)
    {
    //TODO send string data
    }
//else { send no data }
