/// Cable_set(tile, i_cable, i_angle)
var cable = argument0;
var i_cable = argument1; var i_angle = argument2;
cable.image_index = i_cable;
cable.image_angle = dir4_to_angle(i_angle);
cable.i_initial_rotation = dir4_to_angle(i_angle);

