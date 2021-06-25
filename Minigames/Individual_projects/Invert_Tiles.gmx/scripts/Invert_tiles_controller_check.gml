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
    itc.f_time_elapsed = itc.i_MAX_TIME - itc.f_time_left;
     
    with(Tile)
    {
        Tile_set(id, itc.i_PASSED);
    }
    
    minigame_end(true);
    //show_debug_message("You won in "+ string(itc.f_time_elapsed) + " seconds!");
}

