/// grid_create(i_grid_w, i_grid_h, i_n_symbols)
var i_grid_w = argument0; var i_grid_h = argument1; 
var i_n_symbols = argument2;

var grid_tile = ds_grid_create(i_grid_w, i_grid_h);
var f_orig_x = (room_width / 2) - ((i_grid_w * sprite_get_width(spr_Tile)) / 2);
var f_orig_y = (room_height / 2) - ((i_grid_h * sprite_get_height(spr_Tile)) / 2);

for(var _y = 0; _y < i_grid_h; _y++)
{   
    for(var _x = 0; _x < i_grid_w; _x++)
    {
        grid_tile[# _x, _y] = Tile_create(_x, _y, f_orig_x, f_orig_y, irandom(i_n_symbols-1));
    }
}

return grid_tile;
