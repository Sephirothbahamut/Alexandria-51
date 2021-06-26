/// it_Controller_check()
var itc = it_Controller;
var b_win = true;

with(it_Tile)
{
    if(it_Tile_get(id) == itc.i_OFF)
        b_win = false;
}

if(b_win)
{
    itc.b_passed = true;  
    itc.f_time_elapsed = itc.i_MAX_TIME - itc.f_time_left;
     
    with(it_Tile)
    {
        it_Tile_set(id, itc.i_PASSED);
    }
    
    minigame_end(itc.b_passed);
    //show_debug_message("You won in "+ string(itc.f_time_elapsed) + " seconds!");
}


