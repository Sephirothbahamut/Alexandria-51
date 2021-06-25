/// _net_receive_id(buffer)
var buffer = argument0;
/// ______________________________________

Manager.u_pid = buffer_read(buffer, buffer_u8);

var buffer_name = manager_create_buffer(net_t.client_set_name);
buffer_write(buffer_name, buffer_string, s_name);

manager_send(buffer_name);
buffer_delete(buffer_name);
