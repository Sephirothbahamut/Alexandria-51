/// it_create_ring(b_square)
var b_square = verify(argument0, var_t.bool_t); 
var arr_tile_ring;

// Tile creation
for(var i = 7; i >= 0; i--)
{   
    arr_tile_ring[i] = it_Tile_create(it_Controller.i_OFF);
}

// Adjacency calculation
for(var i = 0; i < 8; i++)
{   
    it_Tile_add_adj(arr_tile_ring[i], arr_tile_ring[(i+1) % 8]);
    if(i == 0)
        it_Tile_add_adj(arr_tile_ring[i], arr_tile_ring[7]);
    else
        it_Tile_add_adj(arr_tile_ring[i], arr_tile_ring[(i-1) % 8]);
}

// Coordinates assignment
var f_width = sprite_get_width(it_Tile.sprite_index) * 2;
var f_height = sprite_get_height(it_Tile.sprite_index) * 2;
var f_cx = room_width / 2;
var f_cy = room_height / 2;

var f_angle; var f_cos; var f_sin; var f_box;

for(var i = 0; i < 8; i++)
{
    f_angle = 360 * (i / 8);
    f_box = 0;
    
    // check for diagonal tiles
    if(b_square && ((f_angle / 45) mod 2) != 0) 
        f_box = f_width * (sqrt(2)-1);
        
    arr_tile_ring[i].x = f_cx + lengthdir_x(f_width + f_box, f_angle);
    arr_tile_ring[i].y = f_cy + lengthdir_y(f_height + f_box, f_angle);
    
    //show_debug_message(string(arr_tile_ring[i].x));
    //show_debug_message(string(arr_tile_ring[i].y)+"\n");
}

return arr_tile_ring;

