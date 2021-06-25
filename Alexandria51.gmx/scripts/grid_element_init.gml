/// grid_element_init(object, u_grid_x, u_grid_y, f_orig_x, f_orig_y)
var obj = argument0;
var u_grid_x = verify(argument1, var_t.uint_t);
var u_grid_y = verify(argument2, var_t.uint_t);
var f_orig_x = verify(argument3, var_t.float_t);
var f_orig_y = verify(argument4, var_t.float_t);
/// ______________________________________

var f_size_x = sprite_get_width (obj.sprite_index);
var f_size_y = sprite_get_height(obj.sprite_index);

obj.u_grid_x = u_grid_x;
obj.u_grid_y = u_grid_y;
obj.x = f_orig_x + (u_grid_x * f_size_x);
obj.y = f_orig_y + (u_grid_y * f_size_y);

return obj;
