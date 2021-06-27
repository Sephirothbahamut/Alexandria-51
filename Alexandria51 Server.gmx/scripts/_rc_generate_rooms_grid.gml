/// _rc_generate_rooms_grid(u_width, u_height)
var u_width  = verify(argument0, var_t.uint_t);
var u_height = verify(argument1, var_t.uint_t);
/// ______________________________________
var grid_rooms = ds_grid_create(u_width, u_height);

var f_orig_x = (room_width  / 2) - ((u_width * sprite_get_width (spr_Room)) / 2);
var f_orig_y = (room_height / 2) - ((u_width * sprite_get_height(spr_Room)) / 2);

for(var u_x = 0; u_x < u_width; u_x++)
    {
    for(var u_y = 0; u_y < u_width; u_y++)
        {
        var room_type = rc_random_room_type();
        grid_rooms[# u_x, u_y] = mroom_create(u_x, u_y, f_orig_x, f_orig_y, room_type);
        }
    }
    
// Replace entrance
var mroom_entrance = grid_rooms[# u_x div 2, u_y div 2];
mroom_set_type(mroom_entrance, room_type_t.r_entrance);

// Replace exit
var u_exit_x;
var u_exit_y;
switch(u_random(4))
    {
    case 0: u_exit_x = 0;       u_exit_y = 0;        break;
    case 1: u_exit_x = u_width; u_exit_y = 0;        break;
    case 2: u_exit_x = 0;       u_exit_y = u_height; break;
    case 3: u_exit_x = u_width; u_exit_y = u_height; break;
    }
    
var mroom_exit = grid_rooms[# u_exit_x, u_exit_y];
mroom_set_type(mroom_exit, room_type_t.r_exit);

var ret;
ret[0] = grid_rooms;
ret[1] = mroom_entrance;
return ret;
