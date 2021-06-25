/// room_create(u_grid_x, u_grid_y, f_orig_x, f_orig_y, room_type_t)

var u_grid_x = verify(argument0, var_t.uint_t);
var u_grid_y = verify(argument1, var_t.uint_t);
var f_orig_x = verify(argument2, var_t.float_t);
var f_orig_y = verify(argument3, var_t.float_t);
var room_type = verify(argument4, var_t.uint_t);
/// ______________________________________

var ret = instance_create(0, 0, Room);
grid_element_init(ret, u_grid_x, u_grid_y, f_orig_x, f_orig_y);
ret.room_type = room_type;

ret.sprite_index = Rooms_controller.array_spr[room_type]

return ret;
