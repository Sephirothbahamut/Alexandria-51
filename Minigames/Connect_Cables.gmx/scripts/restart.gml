/// restart()

with(Cables_path_controller)
{
    // Reset game variables
    b_passed = false;
    b_failed = false;
    f_time_elapsed = 0;
    f_time_left = i_MAX_TIME;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;

    // restart the level
    with(Cable)
    {
        //all cables at initial rotation
        image_angle = i_initial_rotation;
    }
    //reset lights
    grid_reset_lights();
}
