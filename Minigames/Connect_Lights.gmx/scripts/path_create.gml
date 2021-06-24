/// path_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len)
var grid_tile = argument0;
var i_grid_w = argument1; var i_grid_h = argument2;
var i_min_len = argument3;
var i_max_len = argument4; 

// Generate starting position
do
{
    var coords_start = coords_create(irandom(i_grid_w - 1), irandom(i_grid_h - 1));
}until(grid_tile[# coords_start[X], coords_start[Y]] == 0)

// Generate path
//var arr_coord_path = next_coords(grid_tile, i_grid_w, i_grid_h, coords_start, i_length, -1);
var arr_coord_path = next_coords_new(grid_tile, i_grid_w, i_grid_h, coords_start, coords_safety.safe, i_min_len, i_max_len, -1);

return arr_coord_path;
