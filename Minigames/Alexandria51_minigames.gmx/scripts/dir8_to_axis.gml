/// dir8_to_axis(dir8)
switch(argument0)
{
    case dir8_RR: return coords_create( 1,  0);
    case dir8_UR: return coords_create( 1, -1);
    case dir8_UP: return coords_create( 0, -1);
    case dir8_UL: return coords_create(-1, -1);
    case dir8_LL: return coords_create(-1,  0);
    case dir8_DL: return coords_create(-1,  1);
    case dir8_DW: return coords_create( 0,  1);
    case dir8_DR: return coords_create( 1,  1);
}

