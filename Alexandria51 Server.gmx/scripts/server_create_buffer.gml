/// server_create_buffer(net_t, [u_size], [b_grow])
var net = verify_range(argument[0], var_t.uint_t, 0, net_t.COUNT);
var u_size = 1024;
if(argument_count > 1) { u_size = verify(argument[1], var_t.uint_t) + 1; }
var b_grow = true;
if(argument_count > 2) { b_grow = verify(argument[2], var_t.bool_t); }
/// ______________________________________

var buffer = buffer_create(1024, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, net);


if(net == net_t.actions_wait) { show_debug_message("Sending wait");}




return buffer;
