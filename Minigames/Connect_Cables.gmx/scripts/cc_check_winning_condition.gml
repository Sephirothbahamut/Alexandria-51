/// cc_check_winning_condition()
if(cc_Cables_path_controller.grid_tile[# cc_Cables_path_controller.coords_end_light[X], cc_Cables_path_controller.coords_end_light[Y]].b_is_enlighted and cc_valid_exit())
{
    cc_Cables_path_controller.b_passed = true;
    cc_Cables_path_controller.b_failed = false;
    cc_minigame_end(true);

}
