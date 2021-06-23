/// next_coords(grid_tile, i_grid_w, i_grid_h, coords_start, i_length, dir4_last);
var grid_tile = argument0; var i_grid_w = argument1; var i_grid_h = argument2;
var coords_start = argument3;
var i_length = argument4;
var dir4_last = argument5;

// caso base length
if(i_length == 0)
{
    var arr_coord_path = array_create(1);
    arr_coord_path[0] = coords_start;
    return arr_coord_path;
}     

// caso ricorsivo

// creating dummy floor tile
grid_set_tile(grid_tile, coords_start[X], coords_start[Y], Floor_create(0,0,0,0));

var list_dir = ds_list_create();

for(var i = 0; i < 4; i++)
    list_dir[| i] = i;

var dir4_last_tmp = dir4_last;    
while(ds_list_size(list_dir) > 0)
{
    var i_idx; var dir4;
    
    if(dir4_last_tmp != -1 && irandom(1) < 0.6)
    {
        //use last dir
        i_idx = ds_list_find_index(list_dir, dir4_last_tmp);
    }
    else
    {
        //use random dir
        i_idx = irandom(ds_list_size(list_dir) - 1);
    }
    
    dir4 = list_dir[| i_idx];
    var coords_delta = dir4_to_axis(dir4);
    var coords_new = coords_sum(coords_start, coords_delta);
    
    if(valid_next(grid_tile, i_grid_w, i_grid_h, coords_new))
    {
        var arr_coord_path = next_coords(grid_tile, i_grid_w, i_grid_h, coords_new, i_length - 1, dir4);
        
        if(arr_coord_path != noone)
        {
            arr_coord_path[array_length_1d(arr_coord_path)] = coords_start;
            
            ds_list_destroy(list_dir);
            return arr_coord_path;
        }
    }
    
    ds_list_delete(list_dir, i_idx);  
    if(dir4 == dir4_last_tmp)
    {
        dir4_last_tmp = -1;
    }
}

ds_list_destroy(list_dir);

return noone;
