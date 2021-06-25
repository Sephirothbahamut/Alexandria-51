/// valid_index(i_x, [i_y], i_width, [i_height])
if(argument_count == 2)
{
    return _valid_index_1(argument[0], argument[1]);
}
else if(argument_count == 4)
{
    return _valid_index_2(argument[0],argument[1],argument[2],argument[3]);
}
