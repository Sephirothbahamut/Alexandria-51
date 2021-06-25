/// verify_container(arg, type, [b_nullable], [type_contained], [b_nullable_content], [obj_index])
if not VERIFY_ENABLED return argument[0];
/// ______________________________________
var arg = argument[0];
var type = argument[1];
var nullable = false;
if(argument_count > 2) { nullable = argument[2]; }
/// ______________________________________
if type < var_t.int_t or type > var_t.stack_t { show_error("Invalid parameter 'type' passed to verify_container function.", 1); }
/// ______________________________________

// ============================ CONTAINER TYPES ============================
if(type >= var_t.array_t and type <= var_t.stack_t)
    {
    if nullable and arg == noone return 0;

    switch(type)
        {
        case var_t.array_t: if not is_array (arg)                _verify_err(type); break;
        case var_t.list_t : if not ds_exists(arg, ds_type_list ) _verify_err(type); break;
        case var_t.grid_t : if not ds_exists(arg, ds_type_grid ) _verify_err(type); break;
        case var_t.map_t  : if not ds_exists(arg, ds_type_map  ) _verify_err(type); break;
        case var_t.queue_t: if not ds_exists(arg, ds_type_queue) _verify_err(type); break;
        case var_t.stack_t: if not ds_exists(arg, ds_type_stack) _verify_err(type); break;
        }
    
    if(argument_count > 3)
        {
        var type_contained = argument[3];
        
        var b_nullable_content = false;
        if(argument_count > 4) { b_nullable_content = argument[4]; }
        
        var u_size = 0;
            
        switch(type)
             {
             case var_t.array_t: u_size = array_length_1d(arg);                                   break;
             case var_t.list_t : u_size = ds_list_size(arg);                                      break;
             case var_t.queue_t: u_size = ds_queue_size(arg);                                     break;
             case var_t.stack_t: u_size = ds_stack_size(arg);                                     break;
             case var_t.map_t  : u_size = ds_map_size(arg);                                       break;
             case var_t.grid_t : u_size = coords_create(ds_grid_width(arg), ds_grid_height(arg)); break;
             }
        
        // Check content
        
        var obj_index = noone; 
        if(argument_count == 6) { obj_index = argument[5]; }
        
        
        switch(type)
            {
            case var_t.queue_t: /*Cannot verify content type for ds_queue.*/; break;
            case var_t.stack_t: /*Cannot verify content type for ds_stack.*/; break;
            case var_t.map_t  : /*Cannot verify content type for ds_map.  */; break;
            case var_t.array_t: for(var i = 0; i < u_size; i++) { verify(arg[  i], type_contained, b_nullable_content, obj_index); } break;
            case var_t.list_t : for(var i = 0; i < u_size; i++) { verify(arg[| i], type_contained, b_nullable_content, obj_index); } break;
            case var_t.grid_t : 
                  for(var u_x = 0; u_x < u_size[X]; u_x++) 
                       {
                       for(var u_y = 0; u_y < u_size[Y]; u_y++) 
                            { verify(arg[# u_x, u_y], type_contained, b_nullable_content, obj_index); } 
                       }
                  break;
            }
        }    
    }
else
    {
    show_error("For verifying non data structures use 'verify'.", 1);
    }
    
return arg;
