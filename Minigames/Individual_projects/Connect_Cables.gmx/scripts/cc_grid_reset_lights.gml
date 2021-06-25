///cc_grid_reset_lights()
//shut down all the lights 
var ccc = cc_Cables_path_controller;
var grid = ccc.grid_tile;
var coords_s =  ccc.coords_start_light;


with(cc_Cable){
    cc_Cable_set_enlight_status(grid[# i_grid_x, i_grid_y],false);
}

//if it's valid entrance, enlight and check neighboors
if(cc_valid_entrance())
{
    cc_Cable_set_enlight_status(grid[# coords_s[X], coords_s[Y]],true);
    //enlight neighboors of the starting point
    cc_Cable_enlight_neighboors(grid[#coords_s[X], coords_s[Y]]);
    cc_check_winning_condition();
}

