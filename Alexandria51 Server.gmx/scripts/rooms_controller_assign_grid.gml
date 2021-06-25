/// rooms_controller_assign_grid(grid_rooms)
var controller  = verify(argument0, var_t.object_t, false, Rooms_controller);
var grid_rooms  = verify_container(argument1, var_t.grid_t, false, var_t.object_t, false, MRoom);
/// ______________________________________

controller.u_width  = ds_grid_width (grid_rooms);
controller.u_height = ds_grid_height(grid_rooms);
controller.grid_rooms = grid_rooms;

return controller;
