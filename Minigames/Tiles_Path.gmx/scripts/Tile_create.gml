// Tile_create(i_symbol)
var i_symbol = argument0;
var tile_new = instance_create(0, 0, Tile);

Tile_set(tile_new, i_symbol);

return tile_new;

