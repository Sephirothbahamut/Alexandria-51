/// it_Tile_add_adj(tile, tile_to_add)
var tile = verify(argument0, var_t.object_t, false, it_Tile); 
var tile_to_add = verify(argument1, var_t.object_t, false, it_Tile); 
ds_list_add(tile.list_tile_adj, tile_to_add);

