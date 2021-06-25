/// Connect_Lights_Controller_calculate_lasers()

// Set dirhits to noone
with(Reflector)
{
    coords_dir_laser = noone;
    f_hit_x = 0;
    f_hit_y = 0;
}

with(Sensor)
{
    b_on = false;
}

// Re-emit lasers
with(Emitter)
{
    eval_laser(id);
}
