///cc_grid_reset_lights()
//shut down all the lights 
with(cc_Cable){
    cc_Cable_set_enlight_status(cc_Cables_path_controller.grid_tile[# i_grid_x, i_grid_y],false);
}

//if it's valid entrance, enlight and check neighboors
if(cc_valid_entrance())
{
    cc_Cable_set_enlight_status(cc_Cables_path_controller.grid_tile[# cc_Cables_path_controller.coords_start_light[X], cc_Cables_path_controller.coords_start_light[Y]],true);
    //enlight neighboors of the starting point
    cc_Cable_enlight_neighboors(cc_Cables_path_controller.grid_tile[#cc_Cables_path_controller.coords_start_light[X],cc_Cables_path_controller.coords_start_light[Y]]);
    cc_check_winning_condition();
}

