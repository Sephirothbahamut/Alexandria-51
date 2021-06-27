/// _rc_generate_rooms_grid(u_width, u_height, list_room_pool)
var u_width  = verify(argument0, var_t.uint_t);
var u_height = verify(argument1, var_t.uint_t);
var list_room_types_pool = verify_container(argument2, var_t.list_t, false, var_t.uint_t);
/// ______________________________________
if(ds_list_size(list_room_types_pool) < (u_width * u_height)) 
    {
    show_error("Not enough Rooms in the pool to generate a grid of the given size#" + 
    "Grid size: [" + string(u_width) + ", " + string(u_height) + "]; " +
    "List size: " + string(ds_list_size(list_room_types_pool)) + ".", 1);
    }
/// ______________________________________

var grid_rooms = ds_grid_create(u_width, u_height);

var f_orig_x = (room_width  / 2) - ((u_width * sprite_get_width (spr_Room)) / 2);
var f_orig_y = (room_height / 2) - ((u_width * sprite_get_height(spr_Room)) / 2);

var u_pool_index = 0;
for(var u_x = 0; u_x < u_width; u_x++)
    {
    for(var u_y = 0; u_y < u_width; u_y++)
        {
        grid_rooms[# u_x, u_y] = mroom_create(u_x, u_y, f_orig_x, f_orig_y, list_room_types_pool[| u_pool_index]);
        u_pool_index++;
        }
    }

ds_list_destroy(list_room_types_pool);

return grid_rooms;
