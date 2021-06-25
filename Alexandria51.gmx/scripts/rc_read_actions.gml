/// rc_read_actions(character, u_index, buffer)
var character =       verify(argument0, var_t.object_t, false, Character);
var u_index   = verify_range(argument1, var_t.uint_t, 1, 2);
var buffer    = argument2;
/// ______________________________________

var action = buffer_read(buffer, buffer_u8);
var data   = noone;

if(action >= action_t.move and action <= action_t.look)
    {
    data = buffer_read(buffer, buffer_u8);
    }
else if(action == action_t.talk)
    {
    //TODO read string data
    }
//else { read no data }

if(u_index == 1)
    {
    character.action_1      = action;
    character.action_1_data = data;
    }
else// if(u_index == 2)
    {
    character.action_2      = action;
    character.action_2_data = data;
    }
