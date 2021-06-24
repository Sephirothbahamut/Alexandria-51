//Cable_enlight_neighboors(cable)
var cable_first = argument0;
cc_Cable_enlight_single_neighboor(cable_first, cable_first.i_grid_x,cable_first.i_grid_y+1,dir4_UP);          
cc_Cable_enlight_single_neighboor(cable_first, cable_first.i_grid_x,cable_first.i_grid_y-1,dir4_DW);
cc_Cable_enlight_single_neighboor(cable_first, cable_first.i_grid_x+1,cable_first.i_grid_y,dir4_RR);
cc_Cable_enlight_single_neighboor(cable_first, cable_first.i_grid_x-1,cable_first.i_grid_y,dir4_LL);


