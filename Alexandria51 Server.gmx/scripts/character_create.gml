/// character_create(client_owner, mroom_current)
var client_owner  = verify(argument0, var_t.object_t, false, Client);
var mroom_current = verify(argument1, var_t.object_t, false, MRoom);
/// ______________________________________

var ret = instance_create(0, 0, Character);
ret.client_owner = client_owner;
ret.image_index = client_owner.u_pid;

character_goto(ret, mroom_current);

return ret;
