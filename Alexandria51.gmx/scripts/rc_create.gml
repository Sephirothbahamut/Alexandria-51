/// rc_create()
/// ______________________________________
var grid_room_types = global.grid_room_types;
var list_chars_positions = global.list_chars_positions;
/// ______________________________________

var controller = instance_create(0, 0, Rooms_controller);

var u_width  = ds_grid_width(grid_room_types);
var u_height = ds_grid_width(grid_room_types);

controller.u_width  = u_width;
controller.u_height = u_height;

/// ______________________________________

controller.grid_rooms = ds_grid_create(u_width, u_height);
var grid_rooms = controller.grid_rooms;

var f_orig_x = (room_width  / 2) - ((u_width * sprite_get_width (spr_Room)) / 2);
var f_orig_y = (room_height / 2) - ((u_width * sprite_get_height(spr_Room)) / 2);

for(var u_y = 0; u_y < controller.u_height; u_y++)
    {
    for(var u_x = 0; u_x < controller.u_width; u_x++)
        {
        grid_rooms[# u_x, u_y] = mroom_create(u_x, u_y, f_orig_x, f_orig_y, grid_room_types[# u_x, u_y]);
        }
    }

// ??? Do not do this, because reasons ¯\_(ツ)_/¯ :) :) :)
//ds_map_destroy(grid_room_types);

controller.characters_list = ds_list_create();
var chars_list = controller.characters_list;


var u_char_count = ds_list_size(list_chars_positions);
for(var u = 0; u < u_char_count; u++)
    {
    var coords_char = list_chars_positions[| u];
    var mroom = grid_rooms[# coords_char[X], coords_char[Y]];
    var client_owner = manager_client_from_pid(u);
    ds_list_add(chars_list, character_create(client_owner, mroom));
    }

return controller;

