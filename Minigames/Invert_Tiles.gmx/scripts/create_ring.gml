/// create_ring()
var arr_tile_ring;

// Tile creation
for(var i = 7; i >= 0; i--)
{   
    arr_tile_ring[i] = Tile_create(Invert_tiles_controller.i_OFF);
}

// Adjacency calculation
for(var i = 0; i < 8; i++)
{   
    Tile_add_adj(arr_tile_ring[i], arr_tile_ring[(i+1) % 8]);
    if(i == 0)
        Tile_add_adj(arr_tile_ring[i], arr_tile_ring[7]);
    else
        Tile_add_adj(arr_tile_ring[i], arr_tile_ring[(i-1) % 8]);
}

// Coordinates assignment
var f_width = sprite_get_width(Tile.sprite_index) * 2;
var f_height = sprite_get_height(Tile.sprite_index) * 2;
var f_x = room_width / 2;
var f_y = room_height / 2;

arr_tile_ring[0].x = f_x + f_width;
arr_tile_ring[0].y = f_y;

arr_tile_ring[1].x = f_x + f_width;
arr_tile_ring[1].y = f_y - f_height;

arr_tile_ring[2].x = f_x;
arr_tile_ring[2].y = f_y - f_height;

arr_tile_ring[3].x = f_x - f_width;
arr_tile_ring[3].y = f_y - f_height;

arr_tile_ring[4].x = f_x - f_width;
arr_tile_ring[4].y = f_y;

arr_tile_ring[5].x = f_x - f_width;
arr_tile_ring[5].y = f_y + f_height;

arr_tile_ring[6].x = f_x;
arr_tile_ring[6].y = f_y + f_height;

arr_tile_ring[7].x = f_x + f_width;
arr_tile_ring[7].y = f_y + f_height;

