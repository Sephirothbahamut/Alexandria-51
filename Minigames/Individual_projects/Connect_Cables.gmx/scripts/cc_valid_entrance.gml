/// cc_valid_entrance()
var ccc = cc_Cables_path_controller;
var grid = ccc.grid_tile;
var coords_s =  ccc.coords_start_light;

var first_cable = grid[# coords_s[X], coords_s[Y]];
if(first_cable.image_index==0)
{
    if(first_cable.image_angle == dir4_to_angle(dir4_UP) or first_cable.image_angle == dir4_to_angle(dir4_LL))
            return true;
    else    return false;

}else{
    if(first_cable.image_angle == dir4_to_angle(dir4_UP) or first_cable.image_angle == dir4_to_angle(dir4_DW))
        return true;
    else    return false;

}
