/// mem_create(b_victory)
var b_victory = verify(argument0, var_t.bool_t);
/// ______________________________________

var ret = instance_create(0, 0, Minigame_end_manager);
ret.b_victory = b_victory;
return ret;
