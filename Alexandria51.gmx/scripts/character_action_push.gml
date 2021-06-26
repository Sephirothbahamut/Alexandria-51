/// character_action_push(character, dir4)
var character     = verify(argument0, var_t.object_t, false, Character);
var dir = argument1; //unsigned, trust me bro
/// ______________________________________

var u_x = character.mroom_current.u_grid_x;
var u_y = character.mroom_current.u_grid_y;

var coords_start = coords_create(u_x, u_y);
var coords_end   = coords_sum(coords_start, dir4_to_axis(dir));

if coords_end[X] >= 0 and coords_end[X] < Rooms_controller.u_width and
   coords_end[Y] >= 0 and coords_end[Y] < Rooms_controller.u_height
    {
    var mroom = Rooms_controller.grid_rooms[# coords_end[X], coords_end[Y]];
    
    var char_to_push = Rooms_controller.characters_list[| irandom(ds_list_size(Rooms_controller.characters_list) - 1)]; 
    
    character_goto(char_to_push, mroom);
    }
