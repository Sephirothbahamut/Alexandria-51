/// server_client_from_name(s_name)
var s_name = verify(argument0, var_t.string_t);
/// ______________________________________

for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client.s_name == s_name) { return client; }
    }
return noone;
