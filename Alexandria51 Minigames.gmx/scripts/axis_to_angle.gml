/// axis_to_angle(x, y)
var _x = argument0;
var _y = argument1;

if( _x == 1 and _y == 0)
    return angle_RR;

if( _x == 1 and _y == -1)
    return angle_UR;

if( _x == 0 and _y == -1)
    return angle_UP;

if( _x == -1 and _y == -1)
    return angle_UL;
    
if( _x == -1 and _y == 0)
    return angle_LL;
    
if( _x == -1 and _y == 1)
    return angle_DL;
    
if( _x == 0 and _y == 1)
    return angle_DW;
    
if( _x == 1 and _y == 1)
    return angle_DR;
    
