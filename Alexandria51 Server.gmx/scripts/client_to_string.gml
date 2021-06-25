/// client_to_string(client)
var client = verify(argument0, var_t.object_t, false, Client);
/// ______________________________________
var str = "Player [pid: " + string(client.u_pid) + ", socket: " + string(client.socket) + "] " + client.s_name;
if client.socket == -1 { str += " (disconnected)"; }

return str;
