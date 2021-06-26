/// textbox_create(f_x, f_y, scr_action)
var f_x     = verify(argument0, var_t. float_t);
var f_y     = verify(argument1, var_t. float_t);
var scr     = verify(argument2, var_t.script_t);
/// ______________________________________
var ret        = instance_create(f_x, f_y, Textbox);
ret.f_x = f_x;
ret.f_y = f_y;

ret.scr_action = scr;
return ret;

