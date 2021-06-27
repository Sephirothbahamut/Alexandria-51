/// it_Tile_create(i_state)
var i_state = verify(argument0, var_t.int_t);
var tile_new = instance_create(0, 0, it_Tile);

it_Tile_set(tile_new, i_state);

return tile_new;

