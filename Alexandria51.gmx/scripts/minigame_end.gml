/// minigame_end(b_win)
var b_win = verify(argument0, var_t.bool_t);
/// ______________________________________


global.minigame_success = b_win;

if(b_win)
    show_debug_message("You won!")
else
    show_debug_message("You lost...");
    
room_goto(r_main);

