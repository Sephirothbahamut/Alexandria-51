/// cc_path_create(i_width, i_height)
var i_width = argument0; var i_height = argument1;

var grid_b = ds_grid_create(i_width, i_height);

var coords_start = coords_create(0, irandom(i_height - 1));

var arr_coord_path = cc_next_coords(grid_b, i_width, i_height, coords_start);

ds_grid_destroy(grid_b);

return arr_coord_path;

