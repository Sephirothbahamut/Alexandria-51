/// cc_check_winning_condition()
var ccc = cc_Controller;
var coords_e = ccc.coords_end_light;
var grid = ccc.grid_tile;


if(grid[# coords_e[X], coords_e[Y]].b_is_enlighted and cc_valid_exit())
{
    ccc.b_passed = true;
    ccc.b_failed = false;
    minigame_end(true);

}

