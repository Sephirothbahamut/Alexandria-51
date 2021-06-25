/// _cl_path_is_turning_h(coords_curr, coords_prev, coords_next)
var coords_curr = verify_container(argument0, var_t.array_t, false, var_t.float_t, false);
var coords_prev = verify_container(argument1, var_t.array_t, false, var_t.float_t, false);
var coords_next = verify_container(argument2, var_t.array_t, false, var_t.float_t, false);

// check if path is turning horizontal (from a vertical line)
return coords_curr[X] == coords_prev[X] && coords_curr[X] != coords_next[X];

