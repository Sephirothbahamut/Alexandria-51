/// cl_Floor_create(i_grid_x, i_grid_y, f_orig_x, f_orig_y)
var i_grid_x = verify(argument0, var_t.int_t); 
var i_grid_y = verify(argument1, var_t.int_t);
var f_orig_x = verify(argument2, var_t.float_t); 
var f_orig_y = verify(argument3, var_t.float_t);

var i_spr_w = sprite_get_width(spr_cl_Floor);
var i_spr_h = sprite_get_height(spr_cl_Floor);

var floor_new = instance_create(f_orig_x + i_grid_x * i_spr_w, 
                            f_orig_y + i_grid_y * i_spr_h, cl_Floor);

floor_new.i_grid_x = i_grid_x;
floor_new.i_grid_y = i_grid_y;
                            
return floor_new;


