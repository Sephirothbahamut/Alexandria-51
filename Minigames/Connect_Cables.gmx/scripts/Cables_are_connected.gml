/// Cables_are_connected( cable_first, cable_second, dir4_direction)
var cable_first = argument0;
var cable_second = argument1;
var dir4_direction = argument2;

var i_first_image = cable_first.image_index;
var i_second_image = cable_second.image_index;
var i_first_angle = cable_first.image_angle;
var i_second_angle = cable_second.image_angle;


if(i_first_image > 1) i_first_image -=2;
if(i_second_image > 1) i_second_image -=2;

switch(dir4_direction){
    case dir4_RR: return Cables_are_connected_right(i_first_image,i_first_angle,i_second_image,i_second_angle);
    case dir4_UP: return Cables_are_connected_right(i_first_image,((i_first_angle - 90 + 360 ) mod 360),i_second_image, ((i_second_angle - 90 + 360) mod 360));
    case dir4_LL: return Cables_are_connected_right(i_first_image,((i_first_angle - 180 + 360) mod 360),i_second_image, ((i_second_angle - 180 + 360) mod 360));
    case dir4_DW: return Cables_are_connected_right(i_first_image,((i_first_angle - 270 + 360) mod 360),i_second_image, ((i_second_angle - 270 + 360) mod 360));
}
