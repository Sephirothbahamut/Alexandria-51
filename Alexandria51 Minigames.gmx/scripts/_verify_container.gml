/// verify_container(arg, type, [nullable], [type_contained], [b_nullable_content], [u_size])
var arg = argument[0];
var type = argument[1];
/// ______________________________________

if nullable and arg == noone return 0;

switch(type)
    {
    case variable_type.array_t: if not is_array (arg)                _verify_err(type); break;
    case variable_type.list_t : if not ds_exists(arg, ds_type_list ) _verify_err(type); break;
    case variable_type.grid_t : if not ds_exists(arg, ds_type_grid ) _verify_err(type); break;
    case variable_type.map_t  : if not ds_exists(arg, ds_type_map  ) _verify_err(type); break;
    case variable_type.queue_t: if not ds_exists(arg, ds_type_queue) _verify_err(type); break;
    case variable_type.stack_t: if not ds_exists(arg, ds_type_stack) _verify_err(type); break;
    }

// Additional checks
if(argument_count == 3) { show_error("If you want to verify a contained type, you also have to pass the parameter 'b_nullable_content'.", 1); }
else if(argument_count > 4)
    {
    var u_size = 0;
    switch(type)
         {
         case variable_type.array_t: u_size = array_length_1d(arg);                                   break;
         case variable_type.list_t : u_size = ds_list_size(arg);                                      break;
         case variable_type.queue_t: u_size = ds_queue_size(arg);                                     break;
         case variable_type.stack_t: u_size = ds_stack_size(arg);                                     break;
         case variable_type.map_t  : u_size = ds_map_size(arg);                                       break;
         case variable_type.grid_t : u_size = coords_create(ds_grid_width(arg), ds_grid_height(arg)); break;
         }
    
    // Check content
    switch(type)
        {
        case variable_type.queue_t: /*Cannot verify content type for ds_queue.*/; break;
        case variable_type.stack_t: /*Cannot verify content type for ds_stack.*/; break;
        case variable_type.map_t  : /*Cannot verify content type for ds_map.  */; break;
        case variable_type.array_t: for(var i = 0; i < u_size; i++) { verify(arg[  i], argument[3], argument[4]); } break;
        case variable_type.list_t : for(var i = 0; i < u_size; i++) { verify(arg[| i], argument[3], argument[4]); } break;
        case variable_type.grid_t : 
              for(var u_x = 0; u_x < u_size[X]; u_x++) 
                   {
                   for(var u_y = 0; u_y < u_size[Y]; u_y++) 
                        { verify(arg[# u_x, u_y], argument[3], argument[4]); } 
                   }
              break;
        }
         
    if(argument_count == 5)
        {
        switch(type)
            {
            case variable_type.array_t: if argument[5] != u_size { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + string(argument[5]) + ", received size " + string(u_size) + " instead.", 1 ); } break;
            case variable_type.list_t : if argument[5] != u_size { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + string(argument[5]) + ", received size " + string(u_size) + " instead.", 1 ); } break;
            case variable_type.queue_t: if argument[5] != u_size { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + string(argument[5]) + ", received size " + string(u_size) + " instead.", 1 ); } break;
            case variable_type.stack_t: if argument[5] != u_size { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + string(argument[5]) + ", received size " + string(u_size) + " instead.", 1 ); } break;
            case variable_type.map_t  : if argument[5] != u_size { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + string(argument[5]) + ", received size " + string(u_size) + " instead.", 1 ); } break;
            case variable_type.grid_t : 
            
                var coords = argument[5];
                if not coords_equal(coords, u_size) 
                    { show_error("Verification failed, expected " + _type_t_to_str(type) + " of size " + coords_to_string(argument[5]) + ", received size " + coords_to_string(u_size) + " instead.", 1 ); } 
                
                break;
            }
        }
    }
