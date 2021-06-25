/// button_create(f_x, f_y, s_label, scr_action, args - noone if in doubt)
var f_x     = verify(argument0, var_t. float_t);
var f_y     = verify(argument1, var_t. float_t);
var s_label = verify(argument2, var_t.string_t);
var scr     = verify(argument3, var_t.script_t);
var args    = argument4;
/// ______________________________________
var ret        = instance_create(f_x, f_y, Button);
ret.f_x = f_x;
ret.f_y = f_y;

ret.s_label    = s_label;
ret.scr_action = scr;
ret.scr_args   = args;
return ret;

