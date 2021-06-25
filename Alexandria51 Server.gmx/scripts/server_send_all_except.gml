/// server_send_all_except(client, buffer)
var except = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________

var buffer_size = buffer_tell(buffer);

for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client != except) and (client.socket != -1)
        { network_send_packet(client.socket, buffer, buffer_size); }
    }
