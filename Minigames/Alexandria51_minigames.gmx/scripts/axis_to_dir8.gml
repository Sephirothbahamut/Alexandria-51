/// axis_to_dir8(x, y)
var _x = argument0;
var _y = argument1;

if( _x == 1 and _y == 0)
    return dir8_RR;

if( _x == 1 and _y == -1)
    return dir8_UR;

if( _x == 0 and _y == -1)
    return dir8_UP;

if( _x == -1 and _y == -1)
    return dir8_UL;
    
if( _x == -1 and _y == 0)
    return dir8_LL;
    
if( _x == -1 and _y == 1)
    return dir8_DL;
    
if( _x == 0 and _y == 1)
    return dir8_DW;
    
if( _x == 1 and _y == 1)
    return dir8_DR;
    

