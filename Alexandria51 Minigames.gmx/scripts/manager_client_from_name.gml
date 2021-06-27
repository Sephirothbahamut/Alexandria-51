/// manager_client_from_pid(s_name)
var u_pid = verify(argument0, var_t.string_t);
/// ______________________________________

for(var u = 0; u < ds_list_size(Manager.list_clients); u++)
    {
    var client = Manager.list_clients[| u];
    if(client.u_pid == net_id) { return client; }
    }
return noone;
