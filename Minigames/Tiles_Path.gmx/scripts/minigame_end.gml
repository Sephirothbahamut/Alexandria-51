/// minigame_end(b_win)
var b_win = argument0;

if(b_win)
    show_debug_message("You won in "+ string(Tiles_path_controller.f_time_elapsed) + " seconds!")
else
    show_debug_message("You lost");
