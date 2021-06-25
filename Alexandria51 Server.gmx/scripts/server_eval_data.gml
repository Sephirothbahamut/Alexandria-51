/// server_eval_data(client, buffer)
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________

var net = buffer_read(buffer, buffer_u8);

switch(net)
    {
    case net_t.client_set_name: _server_client_set_name(client, buffer); break;
    
    case net_t.actions_run:  rc_actions_run(client); break;
    case net_t.actions_wait: rc_actions_character_set(client, buffer); break;
    }
