/// Tile_create(i_grid_x, i_grid_y, f_orig_x, f_orig_y, i_symbol)
var i_grid_x = argument0; var i_grid_y = argument1;
var f_orig_x = argument2; var f_orig_y = argument3;
var i_symbol = argument4;

var i_tile_w = sprite_get_width(spr_Tile);
var i_tile_h = sprite_get_height(spr_Tile);

var tile_new = instance_create(f_orig_x + i_grid_x * i_tile_w, 
                            f_orig_y + i_grid_y * i_tile_h, Tile);

tile_new.i_grid_x = i_grid_x;
tile_new.i_grid_y = i_grid_y;

Tile_set(tile_new, i_symbol);

return tile_new;

