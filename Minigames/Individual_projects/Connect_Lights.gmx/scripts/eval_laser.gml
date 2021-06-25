/// eval_laser(source)
var source = argument0;

var clc = Connect_Lights_Controller;

var coords_dir_laser = source.coords_dir_laser;

source.coords_laser_dest = coords_create(source.i_grid_x, source.i_grid_y);

while(true)
{
    source.coords_laser_dest = coords_sum(source.coords_laser_dest, coords_dir_laser);
    
    // indice non valido
    if(!valid_index(source.coords_laser_dest[X], source.coords_laser_dest[Y], 
        ds_grid_width(clc.grid_tile), ds_grid_height(clc.grid_tile)))
        break;
    
    // controllo tile colpita
    var hit = clc.grid_tile[# source.coords_laser_dest[X], source.coords_laser_dest[Y]];
    if(hit != 0 && hit.object_index != Floor)
    {
        if(hit.object_index == Reflector)  
            Reflector_calc_reflection(hit, axis_to_dir4(coords_dir_laser[X], coords_dir_laser[Y]));
        else if (hit.object_index == Sensor)  
            Sensor_hit(hit);
        //else
        //    hit.dir4_incoming_hit = axis_to_dir4(coords_dir_laser[X], coords_dir_laser[Y]);
      
        break;
    }
    
}

source.f_hit_x = clc.f_orig_x + (source.coords_laser_dest[X] * sprite_get_width(spr_Floor));
source.f_hit_y = clc.f_orig_y + (source.coords_laser_dest[Y] * sprite_get_height(spr_Floor));
