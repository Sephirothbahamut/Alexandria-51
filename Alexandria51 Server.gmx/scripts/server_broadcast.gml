/// server_broadcast(buffer)
var buffer = argument0;

for(var u = 0; u < ds_list_size(list_clients); u++)
    {
    network_send_packet(list_clients[| u].socket, buffer, buffer_tell(buffer));
    }

buffer_delete(buffer);
