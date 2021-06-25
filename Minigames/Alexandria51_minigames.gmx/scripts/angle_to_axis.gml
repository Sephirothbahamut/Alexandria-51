/// angle_to_axis(angle)
switch(argument0)
{
    case angle_RR: return coords_create( 1,  0);
    case angle_UR: return coords_create( 1, -1);
    case angle_UP: return coords_create( 0, -1);
    case angle_UL: return coords_create(-1, -1);
    case angle_LL: return coords_create(-1,  0);
    case angle_DL: return coords_create(-1,  1);
    case angle_DW: return coords_create( 0,  1);
    case angle_DR: return coords_create( 1,  1);
}

