/// coords_sum(coords, ...)
var coords_final = argument[0];

for(var i = 1; i < argument_count; i++)
{
    var coords_tmp = argument[i];
    coords_final[X] += coords_tmp[X];
    coords_final[Y] += coords_tmp[Y];
}

return coords_final;
