/// rc_minigame_finished(b_success)
var b_success = argument0; //bool, trust me

var buffer = manager_create_buffer(net_t.minigame_start);
buffer_writeu8(buffer, b_success);
manager_send(buffer);
buffer_delete(buffer);
