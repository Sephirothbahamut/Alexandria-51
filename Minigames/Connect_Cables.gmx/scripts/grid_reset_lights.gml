///grid_reset_lights()
//shut down all the lights 
with(Cable){
    Cable_set_enlight_status(Cables_path_controller.grid_tile[# i_grid_x, i_grid_y],false);
}

//if it's valid entrance, enlight and check neighboors
if(valid_entrance())
{
    Cable_set_enlight_status(Cables_path_controller.grid_tile[# Cables_path_controller.coords_start_light[X], Cables_path_controller.coords_start_light[Y]],true);
    //enlight neighboors of the starting point
    Cable_enlight_neighboors(Cables_path_controller.grid_tile[#Cables_path_controller.coords_start_light[X],Cables_path_controller.coords_start_light[Y]]);
    check_winning_condition();
}

