/// eval_laser(source, coords_dir_laser)
var source = argument0;
var coords_dir_laser = argument1;

source.coords_laser_dest = coords_create(source.i_grid_x, source.i_grid_y);

while(true)
{
    source.coords_laser_dest = coords_sum(source.coords_laser_dest, coords_dir_laser);
    if(!valid_index(source.coords_laser_dest[X], source.coords_laser_dest[Y], 
        ds_grid_width(Connect_Lights_Controller.grid_tile), ds_grid_height(Connect_Lights_Controller.grid_tile)))
        break;
        
    var hit = Connect_Lights_Controller.grid_tile[# source.coords_laser_dest[X], source.coords_laser_dest[Y]];
    if(hit != noone)
    {
        hit.dir4_incoming_hit = axis_to_dir4(coords_dir_laser[X], coords_dir_laser[Y]);
        break;
    }
    
}

source.f_hit_x = Connect_Lights_Controller.f_orig_x + (coords_laser_dest[X] * sprite_get_width(spr_Wall));
source.f_hit_y = Connect_Lights_Controller.f_orig_y + (coords_laser_dest[Y] * sprite_get_height(spr_Wall));
