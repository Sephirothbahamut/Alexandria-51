/// create_ring(b_square)
var b_square = argument0;
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
var f_cx = room_width / 2;
var f_cy = room_height / 2;

for(var i = 0; i < 8; i++)
{
    var theta = 360 * (i / 8);
    var cos_t = cos(degtorad(theta));
    var sin_t = sin(degtorad(theta));
    var f_box = 0;
    // TODO migliorare la square generation con qualcosa di sensato
    if(b_square && abs(cos_t) != 1 && abs(sin_t) != 1) 
        f_box = f_width * 0.414141414141;
    arr_tile_ring[i].x = (f_box + f_width) * cos_t + f_cx;
    arr_tile_ring[i].y = (f_box + f_height) * sin_t + f_cy;
    //show_debug_message(string(arr_tile_ring[i].x));
    //show_debug_message(string(arr_tile_ring[i].y)+"\n");
}

