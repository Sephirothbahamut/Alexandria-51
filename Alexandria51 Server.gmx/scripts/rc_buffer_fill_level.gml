/// rc_buffer_fill_level(buffer)
var buffer = argument0;
/// ______________________________________

var rc = Rooms_controller.id;
var u_w = rc.u_width;
var u_h = rc.u_height;

buffer_writeu8(buffer, u_w);
buffer_writeu8(buffer, u_h);

var u_broom_x;
var u_broom_y;

for(var u_y = 0; u_y < u_h; u_y++)
    { 
    for(var u_x = 0; u_x < u_w; u_x++)
        {
        var mroom = rc.grid_rooms[# u_x, u_y];
        buffer_writeu8(buffer, mroom.room_type);
        if(mroom.b_has_broom) { u_broom_x = mroom.u_grid_x; u_broom_y = mroom.u_grid_y; }
        }
    }

buffer_writeu8(buffer, u_broom_x);
buffer_writeu8(buffer, u_broom_y);

    
var u_char_count = ds_list_size(rc.characters_list);
buffer_writeu8(buffer, u_char_count);
for(var u = 0; u < u_char_count; u++)
    {
    var mroom = rc.characters_list[| u].mroom_current;
    buffer_writeu8(buffer, mroom.u_grid_x);
    buffer_writeu8(buffer, mroom.u_grid_y);
    
    }
    
return buffer;
