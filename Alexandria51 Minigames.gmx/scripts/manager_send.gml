/// manager_send(buffer)
var buffer = argument0;
/// ______________________________________
network_send_packet(Manager.socket, buffer, buffer_tell(buffer));
