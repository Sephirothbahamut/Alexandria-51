/// grid_create(i_grid_w, i_grid_h)
var i_grid_w = argument0; var i_grid_h = argument1; 

var grid_tile = ds_grid_create(i_grid_w, i_grid_h);
var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_Wall)) / 2);

for(var _y = 0; _y < i_grid_h; _y++)
{   
    for(var _x = 0; _x < i_grid_w; _x++)
    {
        grid_tile[# _x, _y] = object_spawner(_x, _y, i_grid_w, i_grid_h, f_orig_x, f_orig_y);
    }
}

grid_tile[# 8, 2] = Reflector_create(8, 2, f_orig_x, f_orig_y); 
grid_tile[# 6, 3] = Reflector_create(6, 3, f_orig_x, f_orig_y); 
grid_tile[# 8, 7] = Emitter_create(8, 7, f_orig_x, f_orig_y);
grid_tile[# 9, 3] = Emitter_create(9, 3, f_orig_x, f_orig_y);
grid_tile[# 2, 0] = Sensor_create(2, 0, f_orig_x, f_orig_y);
grid_tile[# 0, 6] = Sensor_create(0, 6, f_orig_x, f_orig_y);


return grid_tile;
