/// character_action_talk(character, str)
var character     = verify(argument0, var_t.object_t, false, Character);
var str           = verify(argument1, var_t.string_t);
/// ______________________________________

var u_speaker_x = character.mroom_current.u_grid_x;
var u_speaker_y = character.mroom_current.u_grid_y;

var u_my_x = rc_character_from_pid(Manager.u_pid).mroom_current.u_grid_x;
var u_my_y = rc_character_from_pid(Manager.u_pid).mroom_current.u_grid_y;


var b_sound_arrives = true;
if u_speaker_y == u_my_y //if shared y, check obstacles across x
    {
    var u_beg;
    var u_end;
    
    // -1 on the index I'm in because the sound can *enter* a soundproof room, but not exit it.
    // So if that room is soundproof I still receive the sound
    if(u_speaker_x < u_my_x)
        {
        u_beg = u_speaker_x;
        u_end = u_my_x - 1;
        }
    else
        {
        u_beg = u_my_x + 1;
        u_end = u_speaker_x;
        }
    
    // Check if any room in the path is a soundproof room
    for(; u_beg <= u_end; u_beg++)
        {
        var mroom = Rooms_controller.grid_rooms[# u_beg, u_speaker_y];
        if mroom.room_type == room_type_t.r_soundproof { b_sound_arrives = false; break; }
        }
    }
else if u_speaker_x == u_my_x //if shared x, check obstacles across y
    {
    var u_beg;
    var u_end;
    
    // -1 on the index I'm in because the sound can *enter* a soundproof room, but not exit it.
    // So if that room is soundproof I still receive the sound
    if(u_speaker_y < u_my_y)
        {
        u_beg = u_speaker_y;
        u_end = u_my_y - 1;
        }
    else
        {
        u_beg = u_my_y + 1;
        u_end = u_speaker_y;
        }
    
    // Check if any room in the path is a soundproof room
    for(; u_beg < u_end; u_beg++)
        {
        var mroom = Rooms_controller.grid_rooms[# u_beg, u_speaker_x];
        if mroom.room_type == room_type_t.r_soundproof { b_sound_arrives = false; break; }
        }
    }
else { b_sound_arrives = false; }

if b_sound_arrives { scrolling_text(client_owner.s_name + " said: " + str); }
