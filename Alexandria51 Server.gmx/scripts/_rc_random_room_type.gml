/// _rc_random_room_type(b_include_exit)
var b_include_exit = verify(argument0, var_t.bool_t);
/// ______________________________________

var u_rand;
while(true)
    {
    u_rand = irandom_range(room_type_t.r_exit, room_type_t.COUNT - 1);
    if not (u_rand == room_type_t.r_exit and not b_include_exit) { break; }
    }
    
return u_rand;
