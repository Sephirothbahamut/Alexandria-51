/// cc_Cable_set_enlight_status(cable, b_enlight)
var cable = argument0;
var b_enlight = argument1;
var b_was_enlight = cc_Cables_path_controller.grid_tile[# cable.i_grid_x, cable.i_grid_y].b_is_enlighted;

cc_Cables_path_controller.grid_tile[# cable.i_grid_x, cable.i_grid_y].b_is_enlighted = b_enlight;

return !(b_was_enlight and b_enlight);
