/// server_send_to(client, buffer)
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________

if(client.socket != -1)
    { network_send_packet(client.socket, buffer, buffer_tell(buffer)); }
