/// coords_create([f_x], [f_y])

var arr_f_ret;

switch(argument_count)
    {
    case 0: arr_f_ret[X] = 0;           arr_f_ret[Y] = 0;           break;
    case 1: arr_f_ret[X] = argument[0]; arr_f_ret[Y] = argument[0]; break;
    case 2: arr_f_ret[X] = argument[0]; arr_f_ret[Y] = argument[1]; break;
    }

return arr_f_ret;
