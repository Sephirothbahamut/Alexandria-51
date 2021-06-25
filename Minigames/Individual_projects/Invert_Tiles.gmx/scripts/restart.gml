/// restart()
with(Invert_tiles_controller)
{
    b_passed = false;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;
}

with(Tile)
{
    Tile_set(id, Invert_tiles_controller.i_OFF);
}
