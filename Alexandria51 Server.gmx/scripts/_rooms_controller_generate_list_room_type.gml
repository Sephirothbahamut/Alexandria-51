/// _rooms_controller_generate_list_room_type(u_count) server only
var u_count = verify(argument0, var_t.uint_t);
/// ______________________________________

var ret = ds_list_create();

var u_half = u_count div 2;
var b_exit_assigned = false;

for(var i = 0; i < u_half; i++)
    {
    var u_rand = _rooms_controller_random_room_type(not b_exit_assigned);
    if(u_rand = room_type_t.r_exit) { b_exit_assigned = true};
    ds_list_add(ret, u_rand);
    }
ds_list_add(ret, room_type_t.r_entrance);
for(var i = u_half + 1; i < u_count; i++)
    {
    var u_rand = _rooms_controller_random_room_type(not b_exit_assigned);
    if(u_rand = room_type_t.r_exit) { b_exit_assigned = true};
    ds_list_add(ret, u_rand);
    }

if(!b_exit_assigned) { ret[| 0] = room_type_t.r_exit; }

return ret;
