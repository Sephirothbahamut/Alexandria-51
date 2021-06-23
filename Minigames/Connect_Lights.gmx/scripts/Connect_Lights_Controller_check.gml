/// Connect_Lights_Controller_check()

// Evaluating Winning Conditions
var b_win = true;
with(Sensor)
{
    if(!b_on)
        b_win = false;
}  

if(b_win)
{
    with(Connect_Lights_Controller)
    {
        b_passed = true;
        f_time_elapsed = i_MAX_TIME - f_time_left;
    }
    minigame_end(true);
}       
