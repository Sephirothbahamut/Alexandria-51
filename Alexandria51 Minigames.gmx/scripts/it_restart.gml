/// it_restart()

with(it_Controller)
{
    b_passed = false;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;
}

with(it_Tile)
{
    it_Tile_set(id, it_Controller.i_OFF);
}
