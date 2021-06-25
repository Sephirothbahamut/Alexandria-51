/// _rooms_controller_send_level()

var u_w = Rooms_controller.u_width;
var u_h = Rooms_controller.u_height;

var buffer = server_create_buffer(net_t.send_level_state);
buffer_write(buffer, buffer_u8, u_w);
buffer_write(buffer, buffer_u8, u_h);

for(var u_y = 0; u_y < u_h; u_y++)
    { 
    for(var u_x = 0; u_x < u_w; u_x++)
    buffer_write(buffer, buffer_u8, Rooms_controller.grid_rooms[# u_x, u_y].room_type); 
    }
    
    
server_send_all(buffer);
buffer_delete(buffer);
