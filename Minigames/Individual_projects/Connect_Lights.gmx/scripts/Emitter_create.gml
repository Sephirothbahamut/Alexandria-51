/// Emitter_create(i_grid_x, i_grid_y, f_orig_x, f_orig_y)
var i_grid_x = argument0; var i_grid_y = argument1;
var f_orig_x = argument2; var f_orig_y = argument3;

var i_spr_w = sprite_get_width(spr_Emitter);
var i_spr_h = sprite_get_height(spr_Emitter);

var emitter_new = instance_create(f_orig_x + i_grid_x * i_spr_w, 
                            f_orig_y + i_grid_y * i_spr_h, Emitter);

emitter_new.i_grid_x = i_grid_x;
emitter_new.i_grid_y = i_grid_y;
                            
return emitter_new;

