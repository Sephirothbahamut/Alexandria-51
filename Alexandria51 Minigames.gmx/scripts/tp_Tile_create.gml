/// tp_Tile_create(i_grid_x, i_grid_y, f_orig_x, f_orig_y, i_symbol)
var i_grid_x = verify(argument0, var_t.int_t); 
var i_grid_y = verify(argument1, var_t.int_t);
var f_orig_x = verify(argument2, var_t.float_t); 
var f_orig_y = verify(argument3, var_t.float_t);
var i_symbol = verify(argument4, var_t.int_t);

var i_tile_w = sprite_get_width(spr_tp_Tile);
var i_tile_h = sprite_get_height(spr_tp_Tile);

var tile_new = instance_create(f_orig_x + i_grid_x * i_tile_w, 
                            f_orig_y + i_grid_y * i_tile_h, tp_Tile);

tile_new.i_grid_x = i_grid_x;
tile_new.i_grid_y = i_grid_y;

tp_Tile_set(tile_new, i_symbol);

return tile_new;


