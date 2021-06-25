/// valid_exit()
var ccc = cc_Cables_path_controller;
var coords_e = ccc.coords_end_light;
var grid = ccc.grid_tile;


var last_cable = grid[# coords_e[X], coords_e[Y]];
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
