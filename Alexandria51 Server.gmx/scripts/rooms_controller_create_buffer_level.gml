/// rooms_controller_send_level()

var buffer = server_create_buffer(net_t.send_full_level);
return rooms_controller_buffer_fill_level(buffer);
