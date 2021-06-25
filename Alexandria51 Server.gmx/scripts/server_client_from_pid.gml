/// server_client_from_pid(u_pid)
var u_pid = verify(argument0, var_t.uint_t);
/// ______________________________________

for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client.u_pid == u_pid) { return client; }
    }
return noone;
