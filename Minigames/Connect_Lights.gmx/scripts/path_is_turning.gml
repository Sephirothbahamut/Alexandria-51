/// path_is_turning(coords_curr, coords_prev, coords_next)
var coords_curr = argument0;
var coords_prev = argument1;
var coords_next = argument2;

return _path_is_turning_h(coords_curr, coords_prev, coords_next) || 
        _path_is_turning_v(coords_curr, coords_prev, coords_next);
