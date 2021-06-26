/// create_walls(grid_tile, f_prob_wall)
var grid_tile = verify_container(argument0, var_t.grid_t);
var f_prob_wall = verify(argument1, var_t.float_t);

var i_grid_h = ds_grid_height(grid_tile);
var i_grid_w = ds_grid_width(grid_tile);

var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_cl_Wall)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_cl_Wall)) / 2);


for(var _y = 0; _y < i_grid_h; _y++)
{   
    for(var _x = 0; _x < i_grid_w; _x++)
    {
        if(random(1) < f_prob_wall)
            cl_grid_set_tile(grid_tile, _x, _y, cl_Wall_create(_x, _y, f_orig_x, f_orig_y));
    }
}

