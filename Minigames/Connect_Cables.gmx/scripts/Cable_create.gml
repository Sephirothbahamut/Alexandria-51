/// Cable_create(i_grid_x, i_grid_y, f_orig_x, f_orig_y, i_cable, i_angle)
var i_grid_x = argument0; var i_grid_y = argument1;
var f_orig_x = argument2; var f_orig_y = argument3;
var i_cable = argument4; var i_angle = argument5;

var i_tile_w = sprite_get_width(spr_Cables);
var i_tile_h = sprite_get_height(spr_Cables);

var cable_new = instance_create(f_orig_x + i_grid_x * i_tile_w, 
                            f_orig_y + i_grid_y * i_tile_h, Cable);

cable_new.i_grid_x = i_grid_x;
cable_new.i_grid_y = i_grid_y;

Cable_set(cable_new, i_cable, i_angle);

return cable_new;

