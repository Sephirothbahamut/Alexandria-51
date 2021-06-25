/// _net_accepted(buffer)
var buffer = argument0;
/// ______________________________________
var u_pid = buffer_read(buffer, buffer_u8);
Manager.u_pid = u_pid;
var u_others_count = buffer_read(buffer, buffer_u8);

for(var u = 0; u < u_others_count; u++)
    {
    var other_net_id = buffer_read(buffer, buffer_u8);
    var other_s_name = buffer_read(buffer, buffer_string);
    client_create(other_net_id, other_s_name);
    }
