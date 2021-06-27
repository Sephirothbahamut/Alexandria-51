/// rc_spawn_dir_buttons(u_index)
var u_index = verify_range(argument0, var_t.uint_t, 1, 2);

//Destroy action buttons, add dir buttons
with(Button) { instance_destroy(); }

var f_x = 16;
var f_y = 32;
var f_dy = 8;


var scr_tmp = rc_set_data1;
if(u_index == 2) { scr_tmp = rc_set_data2; }

button_create(f_x, f_y, "LEFT",  scr_tmp, dir4_LL);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "UP",    scr_tmp, dir4_UP);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "RIGHT", scr_tmp, dir4_RR);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "DOWN",  scr_tmp, dir4_DW);
f_y += sprite_get_height(spr_Button) + f_dy;
