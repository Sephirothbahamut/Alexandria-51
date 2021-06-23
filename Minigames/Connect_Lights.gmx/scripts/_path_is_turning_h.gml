/// _path_is_turning_h(coords_curr, coords_prev, coords_next)
var coords_curr = argument0;
var coords_prev = argument1;
var coords_next = argument2;

// check if path is turning horizontal (from a vertical line)
return coords_curr[X] == coords_prev[X] && coords_curr[X] != coords_next[X];
