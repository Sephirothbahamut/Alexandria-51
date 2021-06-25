/// client_create(net_id, s_name)
var u_pid = argument0; //TODO wtf? verify(argument0, var_t.uint_t);
var s_name = verify(argument1, var_t.string_t);
/// ______________________________________
var ret = instance_create(0, 0, Client);
ret.u_pid = u_pid;
ret.s_name = s_name;

ds_list_add(Manager.list_clients, ret);

return ret;
