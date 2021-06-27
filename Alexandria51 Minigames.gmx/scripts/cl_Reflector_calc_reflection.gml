/// cl_Reflector_calc_reflection(reflector, dir4_incoming_hit)
var reflector = verify(argument0, var_t.object_t, false, cl_Reflector);
var dir4_incoming_hit = verify(argument1, var_t.uint_t);

var coords_dir_laser = noone;

if(dir4_incoming_hit != noone)
{
    switch(angle_to_dir4(reflector.image_angle))
    {
        case dir4_RR: 
            if(dir4_incoming_hit == dir4_LL)
                coords_dir_laser = dir4_to_axis(dir4_UP);
            else if(dir4_incoming_hit == dir4_DW)
                coords_dir_laser = dir4_to_axis(dir4_RR);
            break;
        case dir4_UP: 
            if(dir4_incoming_hit == dir4_DW)
                coords_dir_laser = dir4_to_axis(dir4_LL);
            else if(dir4_incoming_hit == dir4_RR)
                coords_dir_laser = dir4_to_axis(dir4_UP);
            break;
        case dir4_LL: 
            if(dir4_incoming_hit == dir4_RR)
                coords_dir_laser = dir4_to_axis(dir4_DW);
            else if(dir4_incoming_hit == dir4_UP)
                coords_dir_laser = dir4_to_axis(dir4_LL);
            break;
        case dir4_DW: 
            if(dir4_incoming_hit == dir4_UP)
                coords_dir_laser = dir4_to_axis(dir4_RR);
            else if(dir4_incoming_hit == dir4_LL)
                coords_dir_laser = dir4_to_axis(dir4_DW);
            break;
    }
    
    if(coords_dir_laser != noone)
    {
        reflector.coords_dir_laser = coords_dir_laser;
        cl_eval_laser(reflector);
    }
    
}

