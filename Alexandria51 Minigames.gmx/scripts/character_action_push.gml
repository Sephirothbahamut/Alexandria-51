/// character_action_push(character, dir)
var character     = verify(argument0, var_t.object_t, false, Character);
var dir           =        argument1;
/// ______________________________________

var char_to_push = noone;

for(var u = 0; u < ds_list_size(character.mroom_current.characters_list); u++)
    {
    var char_tmp = rc_character_from_pid(u);
    if(char_tmp != character) { char_to_push = char_tmp; break; }
    }


if char_to_push != noone
    {
    var u_x = character.mroom_current.u_grid_x;
    var u_y = character.mroom_current.u_grid_y;
    
    var coords_start = coords_create(u_x, u_y);
    var coords_end   = coords_sum(coords_start, dir4_to_axis(dir));
    
    if coords_end[X] >= 0 and coords_end[X] < Rooms_controller.u_width and
       coords_end[Y] >= 0 and coords_end[Y] < Rooms_controller.u_height
        {
        var mroom = Rooms_controller.grid_rooms[# coords_end[X], coords_end[Y]];
        character_goto(char_to_push, mroom);
        }
    }
