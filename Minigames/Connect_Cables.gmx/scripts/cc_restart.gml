/// restart()
var ccc = cc_Cables_path_controller;
with(ccc)
{
    // Reset game variables
    b_passed = false;
    b_failed = false;
    f_time_elapsed = 0;
    f_time_left = i_MAX_TIME;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;

    // restart the level
    with(cc_Cable)
    {
        //all cables at initial rotation
        image_angle = i_initial_rotation;
    }
    //reset lights
    cc_grid_reset_lights();
}
