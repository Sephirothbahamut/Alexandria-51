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

var f_angle; var f_cos; var f_sin; var f_box;

for(var i = 0; i < 8; i++)
{
    f_angle = 360 * (i / 8);
    f_cos = cos(degtorad(f_angle));
    f_sin = sin(degtorad(f_angle));
    f_box = 0;
    
    // Se voglio generare l'anello a quadrato, modifico la distanza delle
    // tile oblique
    if(b_square && abs(f_cos) != 1 && abs(f_sin) != 1) 
        f_box = f_width * (sqrt(2)-1);
        
    arr_tile_ring[i].x = (f_box + f_width) * f_cos + f_cx;
    arr_tile_ring[i].y = (f_box + f_height) * f_sin + f_cy;
    //show_debug_message(string(arr_tile_ring[i].x));
    //show_debug_message(string(arr_tile_ring[i].y)+"\n");
}

return arr_tile_ring;
