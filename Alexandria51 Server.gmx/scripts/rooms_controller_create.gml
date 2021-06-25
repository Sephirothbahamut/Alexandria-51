/// rooms_controller_create()
var controller = instance_create(0, 0, Rooms_controller)
/// ______________________________________

var u_grid_w = 7;
var u_grid_h = 7;

//create level
var list_room_type = _rooms_controller_generate_list_room_type(u_grid_w * u_grid_h);

var grid_rooms = _rooms_controller_generate_rooms_grid(u_grid_w, u_grid_h, list_room_type);
var entrance = grid_rooms[# u_grid_w div 2, u_grid_h div 2];

rooms_controller_assign_grid(controller, grid_rooms);

//create characters
controller.characters_list = ds_list_create();
for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    //From pid so the iterating order is always equal to the pid
    var client = server_client_from_pid(u);
    ds_list_add(controller.characters_list, character_create(client, entrance));
    }

var buffer = rooms_controller_create_buffer_level();
server_send_all(buffer);
buffer_delete(buffer);

with(controller) { alarm[1] = 5 * room_speed; }

return controller;
