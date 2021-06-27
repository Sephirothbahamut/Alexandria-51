/// _net_receive_full_level(buffer);
var buffer = argument0; 
/// ______________________________________

//Rooms grid
var u_w = buffer_readu8(buffer);
var u_h = buffer_readu8(buffer);

if ds_exists(global.grid_room_types, ds_type_grid)
    { ds_grid_destroy(global.grid_room_types); }
    
global.grid_room_types = ds_grid_create(u_w, u_h);

for(var u_y = 0; u_y < u_h; u_y++)
    {
    for(var u_x = 0; u_x < u_w; u_x++)
        {
        global.grid_room_types[# u_x, u_y] = buffer_readu8(buffer);
        }
    }
var u_broom_x = buffer_readu8(buffer);
var u_broom_y = buffer_readu8(buffer);
global.broom_coords = coords_create(u_broom_x, u_broom_y);

if ds_exists(global.list_chars_positions, ds_type_list)
    { ds_list_destroy(global.list_chars_positions); }
global.list_chars_positions = ds_list_create();

var u_char_count = buffer_readu8(buffer);
for(var u = 0; u < u_char_count; u++)
    {
    var u_grid_x = buffer_readu8(buffer);
    var u_grid_y = buffer_readu8(buffer);
    ds_list_add(global.list_chars_positions, coords_create(u_grid_x, u_grid_y));
    }
    
room_goto(r_main);
