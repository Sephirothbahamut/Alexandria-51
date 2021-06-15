/// grid_create(i_grid_w, i_grid_h)
var i_grid_w = argument0; var i_grid_h = argument1; 

var grid_tile = ds_grid_clear(ds_grid_create(i_grid_w, i_grid_h), noone);

var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_Wall)) / 2);

create_walls(grid_tile);

grid_set_tile(grid_tile, 4, 2, Reflector_create(4, 2, f_orig_x, f_orig_y));
var tmp_Reflector = Reflector_create(6, 3, f_orig_x, f_orig_y);
tmp_Reflector.image_angle = angle_DW;
grid_set_tile(grid_tile, 6, 3, tmp_Reflector);
grid_set_tile(grid_tile, 4, 7, Emitter_create(4, 7, f_orig_x, f_orig_y));
grid_set_tile(grid_tile, 9, 3, Emitter_create(9, 3, f_orig_x, f_orig_y));
grid_set_tile(grid_tile, 0, 2, Sensor_create(0, 2, f_orig_x, f_orig_y));
grid_set_tile(grid_tile, 6, 0, Sensor_create(6, 0, f_orig_x, f_orig_y));


return grid_tile;
