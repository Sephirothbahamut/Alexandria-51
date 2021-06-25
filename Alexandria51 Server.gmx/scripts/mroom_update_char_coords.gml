/// mroom_update_char_coords(mroom_current)
var mroom_current = verify(argument0, var_t.object_t, false, MRoom);
/// ______________________________________

for(var u = 0; u < ds_list_size(mroom_current.characters_list); u++)
    {
    var u_x = u mod 4;
    var u_y = u div 4;
    
    var f_x = (mroom_current.x + 32) + (u_x * 46);
    var f_y = (mroom_current.y + 32) + (u_y * 46);
    
    mroom_current.characters_list[|u].x = f_x;
    mroom_current.characters_list[|u].y = f_y;
    }
