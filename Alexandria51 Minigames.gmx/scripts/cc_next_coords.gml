/// cc_next_coords(grid_b, i_width, i_height, coords_start);
var grid_b = argument0; var i_width = argument1; var i_height = argument2;
var coords_start = argument3;

if(coords_start[X] == i_width - 1)
{
    var arr_coord_path = array_create(1);
    arr_coord_path[0] = coords_start;
    return arr_coord_path;
}     

grid_b[# coords_start[X], coords_start[Y]] = true;

var list_dir = ds_list_create();

for(var i = 0; i < 4; i++)
    list_dir[| i] = i;
    
while(ds_list_size(list_dir) > 0)
{
    var i_idx = irandom(ds_list_size(list_dir) - 1);
    var dir4 = list_dir[| i_idx];
    var coords_delta = dir4_to_axis(dir4);
    var coords_to_check = coords_sum(coords_start, coords_delta);
    
    if(valid_index(coords_to_check[X], coords_to_check[Y], i_width, i_height) && 
                    grid_b[# coords_to_check[X], coords_to_check[Y]] == false)
    {
        var arr_coord_path = cc_next_coords(grid_b, i_width, i_height, coords_to_check);
        
        if(arr_coord_path != noone)
        {
            arr_coord_path[array_length_1d(arr_coord_path)] = coords_start;
            
            ds_list_destroy(list_dir);
            return arr_coord_path;
        }
    }
    
    ds_list_delete(list_dir, i_idx);    
}

ds_list_destroy(list_dir);

return noone;

