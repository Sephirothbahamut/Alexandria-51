/// server_send_all(buffer)
var buffer = argument0;
/// ______________________________________

var buffer_size = buffer_tell(buffer);

for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client.socket != -1) 
        { network_send_packet(client.socket, buffer, buffer_size); }
    }
