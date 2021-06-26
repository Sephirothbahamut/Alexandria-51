/// cl_Controller_calculate_lasers()

// Set dirhits to noone
with(cl_Reflector)
{
    coords_dir_laser = noone;
    f_hit_x = 0;
    f_hit_y = 0;
}

with(cl_Sensor)
{
    b_on = false;
}

// Re-emit lasers
with(cl_Emitter)
{
    cl_eval_laser(id);
}

