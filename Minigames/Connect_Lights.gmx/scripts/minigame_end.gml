/// minigame_end(b_win)
var b_win = argument0;

if(b_win)
    show_debug_message("You won in "+ string(Connect_Lights_Controller.f_time_elapsed) + " seconds!")
else
    show_debug_message("You lost");
