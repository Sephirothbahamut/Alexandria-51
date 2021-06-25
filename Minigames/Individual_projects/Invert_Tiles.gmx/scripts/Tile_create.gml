/// Tile_create(i_state)
var i_state = argument0;
var tile_new = instance_create(0, 0, Tile);

Tile_set(tile_new, i_state);

return tile_new;
