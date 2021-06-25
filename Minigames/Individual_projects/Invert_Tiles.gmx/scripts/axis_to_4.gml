/// axis_to_dir(x, y)
var _x = argument0;
var _y = argument1;

if( _x == 1 and _y == 0)
    return i_RR;

if( _x == 0 and _y == -1)
    return i_UP;

if( _x == -1 and _y == 0)
    return i_LL;
    
if( _x == 0 and _y == 1)
    return i_DW;
    
