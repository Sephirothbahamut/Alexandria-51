/// restart
with(cl_Controller)
{
    b_passed = false;
    f_time_elapsed = 0;
    f_time_left = i_MAX_TIME;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;
}

with(cl_Reflector)
{
    image_angle = f_orig_angle;
}

cl_Controller_calculate_lasers();

