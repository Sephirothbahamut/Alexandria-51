//Cable_enlight_single_neighboor(cable_first, i_cable_second_x, i_cable_second_y, dir4_direction)
var cable_first = argument0;
var i_cable_second_x = argument1;
var i_cable_second_y = argument2;
var dir4_direction = argument3;

var coords_cable = coords_create(i_cable_second_x,i_cable_second_y);
if(coords_cable[X] >= 0 and coords_cable[X] < Cables_path_controller.grid_max_w)
    if(coords_cable[Y] >= 0 and coords_cable[Y] < Cables_path_controller.grid_max_h){
        var cable_second = Cables_path_controller.grid_tile[#coords_cable[X],coords_cable[Y]]; 
        if(Cables_are_connected(cable_first,cable_second,dir4_direction)){
            var b_some_change = Cable_set_enlight_status(cable_second,true);
            if(b_some_change)   Cable_enlight_neighboors(cable_second);
        }
    }

