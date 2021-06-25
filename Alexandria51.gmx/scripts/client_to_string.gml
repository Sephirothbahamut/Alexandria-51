/// client_to_string(client)
var client = verify(argument0, var_t.object_t, false, Client);
/// ______________________________________
var str = "Player [" + string(client.u_pid) + "] " + client.s_name;
if not client.connected { str += " (disconnected)"; }

return str;
