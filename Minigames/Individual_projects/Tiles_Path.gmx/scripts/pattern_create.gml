/// pattern_create(i_patt_length, i_n_symbols)
var i_patt_length = argument0; var i_n_symbols = argument1;

var arr_i_pattern = array_create(i_patt_length);

for(var i = 0; i < i_patt_length; i++)
{
    arr_i_pattern[i] = irandom(i_n_symbols - 1);    
}

return arr_i_pattern;
