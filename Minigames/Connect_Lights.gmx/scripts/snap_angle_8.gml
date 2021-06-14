/// snap_angle_8(angle)
var angle = argument0;
var arr_angle_std = array_create(8);

arr_angle_std[0] = angle_RR;
arr_angle_std[1] = angle_UR;
arr_angle_std[2] = angle_UP;
arr_angle_std[3] = angle_UL;
arr_angle_std[4] = angle_LL;
arr_angle_std[5] = angle_DL;
arr_angle_std[6] = angle_DW;
arr_angle_std[7] = angle_DR;

if(angle > (angle_DR + 22.5))
    return angle_RR;

for(var i = 0; i < 8; i++)
{
    if(abs(angle - arr_angle_std[i]) < 22.5)
       return arr_angle_std[i];
}
