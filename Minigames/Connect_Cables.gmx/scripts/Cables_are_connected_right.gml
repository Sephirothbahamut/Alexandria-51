//Cables_are_connected_right(i_first_image,i_first_angle,i_second_image,i_second_angle);
var i_first_image = argument0;
var i_first_angle = argument1;
var i_second_image = argument2;
var i_second_angle = argument3;

switch(i_first_image){
    case 0:
        //first cable L rotated right or down
        if(i_first_angle == dir4_RR || i_first_angle == dir4_DW)
            switch(i_second_image){
                case 0:
                    if(i_second_angle == dir4_RR)
                        return false;
                    if(i_second_angle == dir4_UP)
                        return true;
                    if(i_second_angle == dir4_LL)
                        return true;
                    if(i_second_angle == dir4_DW)
                        return false;
                case 1:
                    if(i_second_angle == dir4_RR)
                        return false;
                    if(i_second_angle == dir4_UP)
                        return true;
                    if(i_second_angle == dir4_LL)
                        return false;
                    if(i_second_angle == dir4_DW)
                        return true;
            }
        //first cable L rotated left or up
        if(i_first_angle == dir4_LL || i_first_angle == dir4_UP)
            return false //sono tutti false in questo caso 
    case 1:
        //first cable I rotated right or left
        if(i_first_angle == dir4_RR || i_first_angle == dir4_LL)
            return false;
        //first cable I rotated up or down
        if(i_first_angle == dir4_UP || i_first_angle == dir4_DW)
            switch(i_second_image){
                case 0:
                    if(i_second_angle == dir4_RR)
                        return false;
                    if(i_second_angle == dir4_UP)
                        return true;
                    if(i_second_angle == dir4_LL)
                        return true;
                    if(i_second_angle == dir4_DW)
                        return false;
                case 1:
                    if(i_second_angle == dir4_RR)
                        return false;
                    if(i_second_angle == dir4_UP)
                        return true;
                    if(i_second_angle == dir4_LL)
                        return false;
                    if(i_second_angle == dir4_DW)
                        return true;
            }
}
