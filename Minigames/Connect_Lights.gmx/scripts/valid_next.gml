/// valid_next(grid_tile, i_grid_w, i_grid_h, coords_to_check)
var grid_tile = argument0;
var i_grid_w = argument1; var i_grid_h = argument2;
var coords_to_check = argument3;

return valid_index(coords_to_check[X], coords_to_check[Y], i_grid_w, i_grid_h) &&
        grid_tile[# coords_to_check[X], coords_to_check[Y]] == 0;
