/// array_flip(arr)
var arr = argument0;

var i_len = array_length_1d(arr);
var arr_ret = array_create(i_len);

for(var i = 0; i < i_len; i++)
{
    arr_ret[i] = arr[(i_len - 1) - i];
}

return arr_ret;
