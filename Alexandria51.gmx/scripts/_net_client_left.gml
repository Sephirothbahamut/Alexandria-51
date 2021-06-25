/// _net_client_left(buffer)
var buffer = argument0;
/// ______________________________________
var u_pid_left = buffer_read(buffer, buffer_u8);

var client = manager_client_from_pid(u_pid_left);

scrolling_text(client_to_string(client) + " has left!");
client.connected = false;
