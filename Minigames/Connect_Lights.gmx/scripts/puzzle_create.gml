/// puzzle_create(grid_tile, i_grid_w, i_grid_h, i_len)
var grid_tile = argument0;
var i_grid_w = argument1; var i_grid_h = argument2;
var i_len = argument3;

var arr_coord_path = path_create(grid_tile, i_grid_w, i_grid_h, i_len);

path_decorate(grid_tile, arr_coord_path);
