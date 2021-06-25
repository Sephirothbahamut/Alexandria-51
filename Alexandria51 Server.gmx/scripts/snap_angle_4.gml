/// snap_angle_4(angle)
var angle = argument0;
var arr_angle_std = array_create(4);

arr_angle_std[0] = angle_RR;
arr_angle_std[1] = angle_UP;
arr_angle_std[2] = angle_LL;
arr_angle_std[3] = angle_DW;

if(angle > angle_DR)
    return angle_RR; 

for(var i = 0; i < 4; i++)
{
    if(abs(angle - arr_angle_std[i]) < 45)
       return arr_angle_std[i];
}
