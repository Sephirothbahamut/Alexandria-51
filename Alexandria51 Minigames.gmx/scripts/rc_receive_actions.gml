/// rc_receive_actions(character, buffer)
var character = verify(argument0, var_t.object_t, false, Character);
var buffer = argument1;
/// ______________________________________

rc_read_actions(character, 1, buffer);
rc_read_actions(character, 2, buffer);
