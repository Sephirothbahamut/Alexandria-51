/// Invert_tiles_controller_check()
var itc = Invert_tiles_controller;
itc.b_win = true;
with(Tile)
{
    if(Tile_get(id) == Invert_tiles_controller.i_OFF)
        itc.b_win = false;
}

if(itc.b_win)
{
    with(Tile)
    {
        Tile_set(id, Invert_tiles_controller.i_COMPLETE);
    }
}

