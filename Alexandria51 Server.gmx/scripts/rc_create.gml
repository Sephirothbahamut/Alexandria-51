/// rc_create()
var controller = instance_create(0, 0, Rooms_controller)
/// ______________________________________

var u_grid_w = 7;
var u_grid_h = 7;

//create level
randomize();
var tmp = _rc_generate_rooms_grid(u_grid_w, u_grid_h);

var grid_rooms = tmp[0]
var entrance = tmp[1];

rc_assign_grid(controller, grid_rooms);

//create characters
controller.characters_list = ds_list_create();
for(var u = 0; u < ds_list_size(Server.list_clients); u++)
    {
    //From pid so the iterating order is always equal to the pid
    var client = server_client_from_pid(u);
    ds_list_add(controller.characters_list, character_create(client, entrance));
    }

var buffer = rc_create_buffer_level();
server_send_all(buffer);
buffer_delete(buffer);

with(controller) { alarm[1] = 5 * room_speed; }

return controller;
