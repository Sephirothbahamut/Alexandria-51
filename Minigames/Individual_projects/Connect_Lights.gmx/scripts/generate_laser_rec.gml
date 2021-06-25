/// generate_laser(source)
var source = argument0;

var coords_curr = coords_create(source.i_grid_x, source.i_grid_y);
var coords_next = coords_sum(coords_curr, source.coords_dir_laser);
var coords_hit = eval_laser_rec(coords_next, source.coords_dir_laser);

source.f_hit_x = Connect_Lights_Controller.f_orig_x + (coords_hit[X] * sprite_get_width(spr_Floor));
source.f_hit_y = Connect_Lights_Controller.f_orig_y + (coords_hit[Y] * sprite_get_height(spr_Floor));
