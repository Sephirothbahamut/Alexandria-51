/// cc_grid_create(i_grid_w, i_grid_h, i_n_cables)
var i_grid_w = argument0; var i_grid_h = argument1; 
var i_n_cables = argument2;

var grid_tile = ds_grid_create(i_grid_w, i_grid_h);
var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_cc_Cables)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_cc_Cables)) / 2);

for(var _y = 0; _y < i_grid_h; _y++)
{   
    for(var _x = 0; _x < i_grid_w; _x++)
    {
        grid_tile[# _x, _y] = cc_Cable_create(_x, _y, f_orig_x, f_orig_y, irandom(i_n_cables-1), irandom(3));
    }
}

return grid_tile;

