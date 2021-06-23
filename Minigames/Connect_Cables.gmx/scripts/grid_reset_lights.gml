///grid_reset_lights()
var i_grid_w = Cables_path_controller.grid_max_w;
var i_grid_h = Cables_path_controller.grid_max_h;

for(var _y = 0; _y < i_grid_h; _y++)
{   
    for(var _x = 0; _x < i_grid_w; _x++)
    {
        if(_x == Cables_path_controller.coords_start_light[X] and _y == Cables_path_controller.coords_start_light[Y])     Cable_set_enlight_status(Cables_path_controller.grid_tile[# _x, _y],true);
        else   Cable_set_enlight_status(Cables_path_controller.grid_tile[# _x, _y],false);
    }
} 
