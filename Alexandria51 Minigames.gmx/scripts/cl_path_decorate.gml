/// cl_path_decorate(grid_tile, arr_coords_path)
var grid_tile = verify_container(argument0, var_t.grid_t); 
var arr_coords_path = argument1;//verify_container(argument1, var_t.array_t)

var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_cl_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_cl_Wall)) / 2);

var i_path_len = array_length_1d(arr_coords_path);

var tile_last_set;

for(var i = 0; i < i_path_len; i++)
{
    var coords_path = arr_coords_path[i];
    
    if(i == 0)
    {
        tile_last_set = cl_Sensor_create(coords_path[X], coords_path[Y], f_orig_x, f_orig_y);
        cl_grid_set_tile(grid_tile, coords_path[X], coords_path[Y], tile_last_set); 
    }
    else if (i == i_path_len-1)
    {
        var emitter = cl_Emitter_create(coords_path[X], coords_path[Y], f_orig_x, f_orig_y);
        emitter.image_angle = point_direction(emitter.x, emitter.y, tile_last_set.x, tile_last_set.y);
        emitter.coords_dir_laser = angle_to_axis(emitter.image_angle);
        cl_grid_set_tile(grid_tile, coords_path[X], coords_path[Y], emitter); 
    }
    else if (cl_path_is_turning(coords_path, arr_coords_path[i-1], arr_coords_path[i+1]))
    {
        var reflector = cl_Reflector_create(coords_path[X], coords_path[Y], f_orig_x, f_orig_y);
        var dir4_rand = dir4_to_axis(irandom(3));
        reflector.f_orig_angle = axis_to_angle(dir4_rand[X], dir4_rand[Y]);
        reflector.image_angle = reflector.f_orig_angle;
        cl_grid_set_tile(grid_tile, coords_path[X], coords_path[Y], reflector); 
        tile_last_set = reflector;
    }
}

