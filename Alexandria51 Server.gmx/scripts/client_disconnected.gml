/// client_disconnected(client)
var client = verify(argument0, var_t.object_t, false, Client);
/// ______________________________________

var buffer = server_create_buffer(net_t.client_left)
buffer_write(buffer, buffer_u8, client.u_pid);
server_send_all_except(client, buffer);
client.socket = -1;
