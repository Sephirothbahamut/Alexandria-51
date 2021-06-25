/// _net_update_id(buffer)
var buffer = argument0;
/// ______________________________________

socket = buffer_read(buffer, u8);

var buffer_name = buffer_create(1024, buffer_grow, 1);
buffer_seek(buffer_name, buffer_seek_start, 0);
buffer_write(buffer_name, buffer_u8, net_t.client_set_name);
buffer_write(buffer_name, buffer_u8, socket);
buffer_write(buffer_name, buffer_string, s_name);

network_send_packet(socket, buffer_name, buffer_tell(buffer_name));

buffer_delete(buffer_name);
