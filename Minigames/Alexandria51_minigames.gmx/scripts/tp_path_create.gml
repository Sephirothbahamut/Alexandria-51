/// tp_path_create(i_grid_w, i_grid_h)
var i_grid_w = verify(argument0, var_t.int_t); 
var i_grid_h = verify(argument1, var_t.int_t);

var grid_b = ds_grid_create(i_grid_w, i_grid_h);

var coords_start = coords_create(0, irandom(i_grid_h - 1));

var arr_coord_path = tp_next_coords(grid_b, i_grid_w, i_grid_h, coords_start);

ds_grid_destroy(grid_b);

return arr_coord_path;

