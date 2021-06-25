/// get_client(socket)
var socket = argument0;
/// ______________________________________

for(var u = 0; u < ds_list_size(list_clients); u++)
    {
    var client = Server.list_clients[| u];
    if(client.socket == socket) { return client; }
    }
return noone;
