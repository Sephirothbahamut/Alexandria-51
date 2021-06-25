/// array_fill(arr, val)
var arr = verify_container(argument0, var_t.array_t);
/// ______________________________________

for(var u = 0; u < array_length_1d(arr); u++) { arr[u] = argument1; }
return arr;
