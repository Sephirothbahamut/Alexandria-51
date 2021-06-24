/// valid_exit()
var last_cable = Cables_path_controller.grid_tile[# Cables_path_controller.coords_end_light[X], Cables_path_controller.coords_end_light[Y]];
if(last_cable.image_index==0)
{
    if(last_cable.image_angle == dir4_to_angle(dir4_RR) or last_cable.image_angle == dir4_to_angle(dir4_DW))
            return true;
    else    return false;

}else{
    if(last_cable.image_angle == dir4_to_angle(dir4_UP) or last_cable.image_angle == dir4_to_angle(dir4_DW))
        return true;
    else    return false;

}
