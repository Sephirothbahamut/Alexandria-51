/// Invert_tiles_controller_check()

var itc = Invert_tiles_controller;
var b_win = true;
with(Tile)
{
    if(Tile_get(id) == itc.i_OFF)
        b_win = false;
}

if(b_win)
{
    itc.b_passed = true;
    itc.alarm[itc.i_TIMER] = 1;   
}

