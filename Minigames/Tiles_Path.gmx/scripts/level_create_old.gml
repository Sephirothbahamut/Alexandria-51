/// level_create_old()
/*
randomize();

// grid size values
var i_min_h = 4; var i_max_h = 8;
var i_min_w = 10; var i_max_w = 15;

var i_grid_h = irandom_range(i_min_h, i_max_h);
var i_grid_w = irandom_range(i_min_w, i_max_w);

var i_max_symbols = 3;//irandom_range(3, sprite_get_number(spr_Tile));

// Grid generation and initialization
show_debug_message("Init");
var arr_tile_grid = create_array(i_grid_h, i_grid_w);

// Correct pattern generation
var arr_i_pattern = create_array(i_max_symbols);

show_debug_message("Pattern");
for(var i = 0; i < i_max_symbols ; i++)
{
    arr_i_pattern[i] = irandom(i_max_symbols - 1);
    show_debug_message(arr_i_pattern[i]);
}


// Correct path generation
var i_y = irandom(i_grid_h - 1); var i_x = 0; 
var i_current_sym = 0;
var i_dir_h = 0; var i_dir_w = 0;

show_debug_message("Path");
while(i_x < i_grid_w-1)
{
    // Check next position validity (if in bounds and free)
    if(valid_index(i_x+i_dir_w, i_y+i_dir_h, i_grid_w, i_grid_h) && arr_tile_grid[i_y+i_dir_h, i_x+i_dir_w] == 0) 
    {
        i_y += i_dir_h;
        i_x += i_dir_w;
        
        arr_tile_grid[i_y, i_x] = Tile_create(arr_i_pattern[i_current_sym]);
        
        i_current_sym = (i_current_sym + 1) mod i_max_symbols;
        
        show_debug_message(string(i_y) + " " + string(i_x))
        
    }
    
    //randomize();
    // Generate next position
    i_dir_h = irandom_range(-1, 1);
    if(i_dir_h == 0)
    {
        i_dir_w = 1;
    }
    else
    {
        i_dir_w = 0;
    }
    //show_debug_message("c: "+string(i_dir_h) + " " + string(i_dir_w))
}

// Rest of grid random filling
show_debug_message("Fill");
for(var i = 0; i < i_grid_h; i++)
{   
    for(var j = 0; j < i_grid_w; j++)
    {
        if(arr_tile_grid[i, j] == 0)
            arr_tile_grid[i, j] = Tile_create(irandom(i_max_symbols-1));
    }
}

// Tile positioning

var i_base_offset = 192;
var i_tile_size = sprite_get_width(spr_Tile);

show_debug_message("Position");
for(var i = 0; i < i_grid_h; i++)
{
    for(var j = 0; j < i_grid_w; j++)
    {
        arr_tile_grid[i, j].x = i_base_offset + i_tile_size * j;
        arr_tile_grid[i, j].y = i_base_offset + i_tile_size * i;
        //show_debug_message(string(arr_tile_grid[i, j].x) + "; " + string(arr_tile_grid[i, j].y));
    }
}

// Pattern positioning
for(var i = 0; i < i_max_symbols; i++)
{
    var tile_pattern = Tile_create(arr_i_pattern[i]);
    tile_pattern.x = (i_base_offset + i_tile_size) + i_tile_size * i;
    tile_pattern.y = (i_base_offset - i_tile_size*2);
    //show_debug_message(string(arr_tile_grid[i, j].x) + "; " + string(arr_tile_grid[i, j].y));
}

// Fence horizontal positioning
var i_fence_size = sprite_get_width(spr_Fence);
var i_w_fence_amount = ((i_grid_w * i_tile_size) / i_fence_size) + 1;

for(var i = 0; i < i_w_fence_amount; i++)
{
    var fence = Fence_create();
    fence.image_angle = 90;
    fence.x = i_base_offset + i_fence_size * i;
    fence.y = i_base_offset - 40;
    //show_debug_message(fence.x);
}

for(var i = 0; i < i_w_fence_amount; i++)
{
    var fence = Fence_create();
    fence.image_angle = 90;
    fence.x = i_base_offset + i_fence_size * i;
    fence.y = i_base_offset + ((i_grid_h-1) * i_tile_size) + 40;
}

// Fence vertical positioning

var i_h_fence_amount = ((i_grid_h * i_tile_size) / i_fence_size);

for(var i = 0; i < i_h_fence_amount; i++)
{
    var fence = Fence_create();
    fence.x = i_base_offset + ((i_grid_w) * i_tile_size) + 20;
    fence.y = i_base_offset - 10 + i_fence_size * i;
}
*/
