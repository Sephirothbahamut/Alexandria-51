//cc_Cable_enlight_single_neighboor(cable_first, i_potential_cable_second_x, i_potential_cable_second_y, dir4_direction)
var cable_first = argument0;
var i_cable_second_x = argument1;
var i_cable_second_y = argument2;
var dir4_direction = argument3;

var ccc = cc_Controller;
var i_max_w = ccc.grid_max_w;
var i_max_h = ccc.grid_max_h;
var grid = ccc.grid_tile;

var coords_cable = coords_create(i_cable_second_x,i_cable_second_y);
//I need to check If I have a valid index
if(coords_cable[X] >= 0 and coords_cable[X] < i_max_w)
    if(coords_cable[Y] >= 0 and coords_cable[Y] < i_max_h){
        //Here I'm sure that the second cable exists
        var cable_second = grid[#coords_cable[X],coords_cable[Y]]; 
        //If they are connected I enlight them
        if(cc_Cables_are_connected(cable_first,cable_second,dir4_direction)){
            var b_some_change = cc_Cable_set_enlight_status(cable_second,true);
            //I need to go recursive if I enlighted something that was not already enlighted
            if(b_some_change)   cc_Cable_enlight_neighboors(cable_second);
        }
    }


