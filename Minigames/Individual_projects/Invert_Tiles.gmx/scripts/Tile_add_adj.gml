/// Tile_add_adj(tile, tile_to_add)
var tile = verify_arg(argument0, Tile); var tile_to_add = verify_arg(argument1, Tile);
ds_list_add(tile.list_tile_adj, tile_to_add);
