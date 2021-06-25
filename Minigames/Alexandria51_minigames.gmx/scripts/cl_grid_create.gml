/// cl_grid_create(i_grid_w, i_grid_h, i_n_paths, f_wall_density, i_min_len, i_max_len)
var i_grid_w = verify(argument0, var_t.uint_t); 
var i_grid_h = verify(argument1, var_t.uint_t);
var i_n_paths = verify(argument2, var_t.uint_t);
var f_wall_density = verify(argument3, var_t.float_t);
var i_min_len = verify(argument4, var_t.uint_t);
var i_max_len = verify(argument5, var_t.uint_t);


var grid_tile = ds_grid_create(i_grid_w, i_grid_h);

var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_cl_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_cl_Wall)) / 2);

// Create random walls
cl_create_walls(grid_tile, f_wall_density);

// Create random paths

for(var i = 0; i < i_n_paths; i++)
{
    cl_puzzle_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len);
}

return grid_tile;

