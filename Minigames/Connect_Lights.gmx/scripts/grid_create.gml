/// grid_create(i_grid_w, i_grid_h, i_n_paths, f_wall_density, i_min_len, i_max_len)
var i_grid_w = argument0; var i_grid_h = argument1;
var i_n_paths = argument2; 
var f_wall_density = argument3;
var i_min_len = argument4;
var i_max_len = argument5; 


var grid_tile = ds_grid_create(i_grid_w, i_grid_h);

var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_Wall)) / 2);

// Create random walls
randomize();
create_walls(grid_tile, f_wall_density);

// Create random paths

for(var i = 0; i < i_n_paths; i++)
{
    puzzle_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len);
}

return grid_tile;
