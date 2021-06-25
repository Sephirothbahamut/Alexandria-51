/// _net_client_joined(buffer)
var buffer = argument0;
/// ______________________________________

var u_pid = buffer_read(buffer, buffer_u8);
var s_name = buffer_read(buffer, buffer_string);

var client = manager_client_from_pid(u_pid);
if(client == noone) 
    {
    client = client_create(u_pid, s_name); 
    scrolling_text(client_to_string(client) + " has arrived!");
    }
else 
    {
    client.connected = true;
    scrolling_text(client_to_string(client) + " has returned!");
    }


