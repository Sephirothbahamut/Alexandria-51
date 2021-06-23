/// lose()
with(Sensor)
{
    b_on = false;
}

with(Connect_Lights_Controller)
{
    b_passed = false;
    alarm[i_TIMER] = 1;
}
