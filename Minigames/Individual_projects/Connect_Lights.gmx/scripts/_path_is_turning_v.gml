/// _path_is_turning_v(coords_curr, coords_prev, coords_next)
var coords_curr = argument0;
var coords_prev = argument1;
var coords_next = argument2;

// check if path is turning vertically (from a horizontal line)
return coords_curr[Y] == coords_prev[Y] && coords_curr[Y] != coords_next[Y];
