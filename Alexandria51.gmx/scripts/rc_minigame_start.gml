/// rc_minigame_start(buffer)
var buffer = argument0;
/// ______________________________________

var u_minigame_index = buffer_readu8(buffer);

switch(u_minigame_index)
    {
    case minigame_t.invert_tiles:   room_goto(r_it_Main);        break;
    case minigame_t.tiles_path:     room_goto(r_tp_Main);        break;
    case minigame_t.connect_lights: room_goto(r_cl_Main);        break;
    case minigame_t.connect_cables: room_goto(r_cc_Main);        break;
    case minigame_t.COUNT:          rc_minigame_finished(false); break;
    }
    

