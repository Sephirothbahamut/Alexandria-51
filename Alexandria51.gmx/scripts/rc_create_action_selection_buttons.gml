/// rc_create_action_selection_buttons()

var f_x = 16;
var f_y = 32;
var f_dy = 8;

//Destroy potentially existing dir buttons buttons, add action buttons
with(Button) { instance_destroy(); }

button_create(f_x, f_y, "Pass", rc_chose_action, action_t.pass);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "Talk", rc_chose_action, action_t.talk);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "Move", rc_chose_action_dir, action_t.move);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "Look", rc_chose_action_dir, action_t.look);
f_y += sprite_get_height(spr_Button) + f_dy;

button_create(f_x, f_y, "Push", rc_chose_action_dir, action_t.push);
f_y += sprite_get_height(spr_Button) + f_dy;
