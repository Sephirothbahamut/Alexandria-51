/// Cable_set(tile, i_cable, i_angle)
var cable = verify_arg(argument0, Cable); var i_cable = argument1; var i_angle = argument2;
cable.image_index = i_cable;
cable.image_angle = dir4_to_angle(i_angle);
