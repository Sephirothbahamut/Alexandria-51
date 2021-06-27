/// dir4_to_axis(dir4)
switch(argument0)
{
    case dir4_RR: return coords_create( 1,  0);
    case dir4_UP: return coords_create( 0, -1);
    case dir4_LL: return coords_create(-1,  0);
    case dir4_DW: return coords_create( 0,  1);
}
