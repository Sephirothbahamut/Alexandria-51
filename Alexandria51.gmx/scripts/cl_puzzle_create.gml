/// cl_puzzle_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len)
var grid_tile = verify_container(argument0, var_t.grid_t);
var i_grid_w = verify(argument1, var_t.uint_t); 
var i_grid_h = verify(argument2, var_t.uint_t);
var i_min_len = verify(argument3, var_t.uint_t); 
var i_max_len = verify(argument4, var_t.uint_t); 

var arr_coord_path = cl_path_create(grid_tile, i_grid_w, i_grid_h, i_min_len, i_max_len);

cl_path_decorate(grid_tile, arr_coord_path);
