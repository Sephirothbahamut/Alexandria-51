/// restart()

with(Tiles_path_controller)
{
    // Reset game variables
    b_passed = false;
    b_failed = false;
    sprite_index = spr_Char_front;
    i_symbol_idx = 0;
    f_time_elapsed = 0;
    f_time_left = i_MAX_TIME;
    alarm[i_TIMER] = i_MAX_TIME * room_speed;
    
    // Reset player path stack
    ds_stack_destroy(stack_tile_path);
    stack_tile_path = ds_stack_create();
    ds_stack_push(stack_tile_path, tile_current);
    
    // Reposition player
    tile_current = grid_tile[# coords_player_start[X], coords_player_start[Y]];
    
    // Reset graphical position
    x = tile_current.x;
    y = tile_current.y;
}
