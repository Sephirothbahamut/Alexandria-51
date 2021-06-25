/// cc_minigame_end(b_win)
var b_win = argument0;
var ccc = cc_Cables_path_controller;

if(b_win)
    show_debug_message("You won in "+ string(ccc.f_time_elapsed) + " seconds!")
else
    show_debug_message("You lost");
