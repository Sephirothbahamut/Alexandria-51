/// fader_create(seconds, color, b_in)
var seconds = verify(argument0, var_t.float_t);
var color   = argument1;
var b_in    = verify(argument2, var_t.bool_t);
/// ______________________________________

var ret = instance_create(0, 0, Fader);
ret.b_in     = b_in;
ret.color    = color;
ret.duration = seconds * room_speed;
ret.alarm[0] = ret.duration;
return ret;
