///grid_reset_lights()
//shut down all the lights that are not in the starting point
with(Cable){
        if(i_grid_x == Cables_path_controller.coords_start_light[X] and i_grid_y == Cables_path_controller.coords_start_light[Y])     
               Cable_set_enlight_status(Cables_path_controller.grid_tile[# i_grid_x, i_grid_y],true);
        else   Cable_set_enlight_status(Cables_path_controller.grid_tile[# i_grid_x, i_grid_y],false);
}
//enlight neighboors of the starting point
Cable_enlight_neighboors(Cables_path_controller.grid_tile[#Cables_path_controller.coords_start_light[X],Cables_path_controller.coords_start_light[Y]]);
