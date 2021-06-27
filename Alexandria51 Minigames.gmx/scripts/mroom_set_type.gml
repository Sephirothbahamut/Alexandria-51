/// mroom_set_type(mroom, room_type)
var mroom = verify(argument0, var_t.object_t, false, MRoom);
var room_type = argument1;
/// ______________________________________

mroom.room_type = room_type;
mroom.sprite_index = Rooms_controller.array_spr[room_type];
