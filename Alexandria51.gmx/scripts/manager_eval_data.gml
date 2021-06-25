/// manager_eval_data(buffer)
var buffer = argument0;
/// ______________________________________

var net = buffer_read(buffer, buffer_u8);

switch(net)
    {
    case net_t.client_send_socket:   _net_receive_socket(buffer);     break;
    case net_t.client_name_accepted: _net_accepted(buffer);           break;
    case net_t.client_name_rejected: _net_rejected();                 break;
    case net_t.client_joined:        _net_client_joined(buffer);      break;
    case net_t.client_left:          _net_client_left(buffer);        break;
    case net_t.send_full_level:      _net_receive_full_level(buffer); break;
    
    case net_t.actions_wait:         rc_server_waits_actions(); break;
    case net_t.actions_run:          rc_set_actions(buffer);    break;
    }
