/// server_client_from_socket(socket)
var socket = argument0;
/// ______________________________________

for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client.socket == socket) { return client; }
    }
return noone;
