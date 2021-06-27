/// it_Tile_set(tile, i_state)
var tile = verify(argument0, var_t.object_t, false, it_Tile); 
var i_state = verify(argument1, var_t.int_t);

tile.image_index = i_state;
