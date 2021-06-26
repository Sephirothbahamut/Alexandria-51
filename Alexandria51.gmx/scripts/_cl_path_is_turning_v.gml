/// _cl_path_is_turning_v(coords_curr, coords_prev, coords_next)
var coords_curr = verify_container(argument0, var_t.array_t, false, var_t.float_t, false);
var coords_prev = verify_container(argument1, var_t.array_t, false, var_t.float_t, false);
var coords_next = verify_container(argument2, var_t.array_t, false, var_t.float_t, false);

// check if path is turning vertically (from a horizontal line)
return coords_curr[Y] == coords_prev[Y] && coords_curr[Y] != coords_next[Y];

