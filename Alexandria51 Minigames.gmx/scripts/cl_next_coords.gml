/// cl_next_coords(grid_tile, i_grid_w, i_grid_h, coords_start, i_coords_safety, i_min_len, i_max_len, dir4_last);
var grid_tile = verify_container(argument0, var_t.grid_t);       
var i_grid_w = verify(argument1, var_t.uint_t); 
var i_grid_h = verify(argument2, var_t.uint_t);
var coords_start = verify_container(argument3, var_t.array_t, false, var_t.float_t, false);   
var i_coords_safety = verify_range(argument4, var_t.int_t, 0, 3);
var i_min_len = verify(argument5, var_t.int_t); 
var i_max_len = verify(argument6, var_t.int_t);
var dir4_last = verify(argument7, var_t.int_t);

// caso base length
if(i_max_len == 1)
{
    if(i_coords_safety == coords_safety.safe)
    {
        var arr_coord_path = array_create(1);
        arr_coord_path[0] = coords_start;
        return arr_coord_path;
    }
    else 
        return noone;
}     
// caso ricorsivo
else
{
    // creating dummy floor tile
    cl_grid_set_tile(grid_tile, coords_start[X], coords_start[Y], cl_Floor_create(0,0,0,0));
    
    // setting up directions to try
    var list_dir = ds_list_create();
    
    for(var i = 0; i < 4; i++)
    {
        list_dir[| i] = i;
    }
    
    // we dont wanna backtrack so we remove the "backwards" direction
    // which is the opposite of the one we were following the previous step
    ds_list_delete(list_dir, (dir4_last + 2 mod 4));  
    
    var dir4_last_tmp = dir4_last;  
      
    // choose next dir
    while(ds_list_size(list_dir) > 0)
    {
        var i_idx; var dir4;
        
        if(dir4_last_tmp != -1 && irandom(1) < 0.2)
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
        var i_next_coords_safety = cl_check_path_coords(grid_tile, i_grid_w, i_grid_h, coords_new);
        
        if(i_next_coords_safety == coords_safety.safe)
        {
            var arr_coord_path = cl_next_coords(grid_tile, i_grid_w, i_grid_h, coords_new, i_next_coords_safety, i_min_len - 1, i_max_len - 1, dir4);
            
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
    
    // if no new direction is found
    if(i_min_len <= 1 && i_coords_safety == coords_safety.safe)
    {
        var arr_coord_path = array_create(1);
        arr_coord_path[0] = coords_start;
        return arr_coord_path;
    }
        
    
    return noone;
}

