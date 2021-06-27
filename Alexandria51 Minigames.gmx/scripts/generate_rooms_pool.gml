/// generate_room_types_pool(u_count)
var u_count = verify(argument0, var_t.uint_t);
/// ______________________________________

var ret = ds_list_create();

ds_list_add(ret, room_type_t.r_exit);
ds_list_add(ret, room_type_t.r_entrance);

for(var i = 0; i < 50; i++)
    {
    ds_list_add(ret, room_type_t.r_empty);
    }

return ret;
