/// cl_path_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len)
var grid_tile = verify_container(argument0, var_t.grid_t);
var i_grid_w = verify(argument1, var_t.uint_t); 
var i_grid_h = verify(argument2, var_t.uint_t);
var i_min_len = verify(argument3, var_t.uint_t); 
var i_max_len = verify(argument4, var_t.uint_t); 

// Generate starting position
do
{
    var coords_start = coords_create(irandom(i_grid_w - 1), irandom(i_grid_h - 1));
}until(grid_tile[# coords_start[X], coords_start[Y]] == 0)

// Generate path
var arr_coord_path = cl_next_coords(grid_tile, i_grid_w, i_grid_h, coords_start, coords_safety.safe, i_min_len, i_max_len, -1);

return arr_coord_path;

