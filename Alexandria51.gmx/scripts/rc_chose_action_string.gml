/// rc_chose_action_string(action)
var action = verify_range(argument0, var_t.uint_t, 0, action_t.COUNT);
/// ______________________________________
var rc = Rooms_controller;

var f_x = 16;
var f_y = 32;
var scr_tmp;

if(rc.action_1 == action_t.COUNT)
    {
    rc.action_1 = action;
    scr_tmp = rc_set_data1;
    }
    else
    {
    rc.action_2 = action;
    scr_tmp = rc_set_data2;
    }
    
//Destroy action buttons, add textbox
with(Button) { instance_destroy(); }
textbox_create(f_x, f_y, scr_tmp);
