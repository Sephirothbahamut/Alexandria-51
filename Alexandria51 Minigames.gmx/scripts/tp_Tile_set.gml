/// tp_Tile_set(tile, i_symbol)
var tile = verify(argument0, var_t.object_t, false, tp_Tile); 
var i_new_symbol = verify(argument1, var_t.int_t);

tile.image_index = i_new_symbol;
