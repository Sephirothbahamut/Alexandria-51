/// dir_to_axis(f_dir)
switch(argument0)
{
	case i_DIR_RR: return axis_create(1, 0);
    case i_DIR_UR: return axis_create(1, -1);
	case i_DIR_UP: return axis_create(0, -1);
    case i_DIR_UL: return axis_create(-1, -1);
    case i_DIR_LL: return axis_create(-1, 0);
    case i_DIR_DL: return axis_create(-1, 1);
    case i_DIR_DW: return axis_create(0, 1);
    case i_DIR_DR: return axis_create(1, 1);
}
