/// axis_to_dir4(x, y)
var _x = argument0;
var _y = argument1;

if( _x == 1 and _y == 0)
    return dir4_RR;

if( _x == 0 and _y == -1)
    return dir4_UP;

if( _x == -1 and _y == 0)
    return dir4_LL;
    
if( _x == 0 and _y == 1)
    return dir4_DW;
    

