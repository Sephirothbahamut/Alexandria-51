/// cl_Controller_check()

// Evaluating Winning Conditions
var b_win = true;
with(cl_Sensor)
{
    if(!b_on)
        b_win = false;
}  

if(b_win)
{
    with(cl_Controller)
    {
        b_passed = true;
        f_time_elapsed = i_MAX_TIME - f_time_left;
    }
    minigame_end(true);
}       

