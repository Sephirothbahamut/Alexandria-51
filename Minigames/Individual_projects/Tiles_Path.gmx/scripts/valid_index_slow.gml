/// valid_index_slow(array, i_x, [i_y])
var array = argument[0]; var i_x = argument[1]; 
if(argument_count == 3 && array_height_2d(array) == 2)
{
    var i_y = argument[2];
    return _valid_index_2(i_x, i_y, 
        array_length_2d(array, i_y), array_height_2d(array));
}
else if(argument_count == 2)
{
    return _valid_index_1(i_x, array_length_1d(array));
}
    
