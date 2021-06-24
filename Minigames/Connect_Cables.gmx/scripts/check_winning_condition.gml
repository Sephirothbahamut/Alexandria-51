/// check_winning_condition()
if(Cables_path_controller.grid_tile[# Cables_path_controller.coords_end_light[X], Cables_path_controller.coords_end_light[Y]].b_is_enlighted and valid_exit())
{
    Cables_path_controller.b_passed = true;
    Cables_path_controller.b_failed = false;
    minigame_end(true);

}
