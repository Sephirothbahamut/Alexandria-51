/// check_path_coords(grid_tile, i_grid_w, i_grid_h, coords_to_check)
var grid_tile = argument0;
var i_grid_w = argument1; var i_grid_h = argument2;
var coords_to_check = argument3;

enum coords_safety 
{
    unsafe = 0,  // it is unsafe to make these coords part of the path
    partial = 1, // it could be safe to make these coords part of the path (will be checked by later coords)
    safe = 2 // it is completely safe to make these coords part of the path
}

if(valid_index(coords_to_check[X], coords_to_check[Y], i_grid_w, i_grid_h))
{
    var tile_to_check = grid_tile[# coords_to_check[X], coords_to_check[Y]];
    
    // non ho problemi se ho un wall (scvrascribibile) o nulla
    if(tile_to_check == 0 || tile_to_check.object_index == Wall)
    {
        return coords_safety.safe;
    }
    
    if(tile_to_check.object_index == Floor)
    {
        return coords_safety.partial;
    }
}

return coords_safety.unsafe;
