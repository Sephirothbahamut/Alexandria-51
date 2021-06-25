/// client_create(socket)
var socket = argument0;
/// ______________________________________

var ret = instance_create(0, 0, Client);
ret.socket = socket;

ds_list_add(Server.list_clients, ret);

var buffer = buffer_create(2, buffer_grow, 1);
buffer_write(buffer, buffer_u8, net_t.client_send_socket);
buffer_write(buffer, buffer_u8, socket);
server_send_to(ret, buffer);

buffer_delete(buffer);

return ret;
