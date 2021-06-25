/// rc_read_actions(character, buffer)
var character = verify(argument0, var_t.object_t, false, Character);
var buffer = argument1;
/// ______________________________________




var action_1 = buffer_read(buffer, buffer_u8);
var action_2 = buffer_read(buffer, buffer_u8);
character.action_1 = action_1;
character.action_2 = action_2;
