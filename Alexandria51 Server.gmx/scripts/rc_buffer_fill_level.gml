/// rc_buffer_fill_level(buffer)
var buffer = argument0;
/// ______________________________________

var u_w = Rooms_controller.u_width;
var u_h = Rooms_controller.u_height;

buffer_write(buffer, buffer_u8, u_w);
buffer_write(buffer, buffer_u8, u_h);

for(var u_y = 0; u_y < u_h; u_y++)
    { 
    for(var u_x = 0; u_x < u_w; u_x++)
        { buffer_write(buffer, buffer_u8, Rooms_controller.grid_rooms[# u_x, u_y].room_type); }
    }

var u_char_count = ds_list_size(Rooms_controller.characters_list);
buffer_write(buffer, buffer_u8, u_char_count);
for(var u = 0; u < u_char_count; u++)
    {
    var mroom = Rooms_controller.characters_list[| u].mroom_current;
    buffer_write(buffer, buffer_u8, mroom.u_grid_x);
    buffer_write(buffer, buffer_u8, mroom.u_grid_y);
    }

return buffer;
