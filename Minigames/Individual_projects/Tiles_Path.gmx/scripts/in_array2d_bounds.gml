/// in_array2d_bounds(i_i, i_j, i_size_w, i_size_h)
var i_i = argument0; var i_j = argument1; 
var i_size_w = argument2; var i_size_h = argument3;

return i_i >= 0 && i_j >= 0 && i_j < i_size_w && i_i < i_size_h;
