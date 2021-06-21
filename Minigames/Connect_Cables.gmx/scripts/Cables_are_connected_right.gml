//Cables_are_connected_right(i_first_image,i_first_angle,i_second_image,i_second_angle);
var i_first_image = argument0;
var i_first_angle = angle_to_dir4(argument1);
var i_second_image = argument2;
var i_second_angle = angle_to_dir4(argument3);

var b_value_to_return = false;

switch(i_first_image){
    case 0:
        //first cable L rotated right or down
        if(i_first_angle == dir4_RR or i_first_angle == dir4_DW){
            switch(i_second_image){
                case 0:
                    switch(i_second_angle){
                        case dir4_RR: break;
                        case dir4_UP: b_value_to_return=true; break;
                        case dir4_LL: b_value_to_return=true; break;
                        case dir4_DW: break;
                    }
                    break;
                case 1:
                    switch(i_second_angle){
                        case dir4_RR: break;
                        case dir4_UP: b_value_to_return=true; break;
                        case dir4_LL: break;
                        case dir4_DW: b_value_to_return=true; break;
                    }
                    break;
            }
        }
        //first cable L rotated left or up
        break;
    case 1:
        //first cable I rotated up or down
        if(i_first_angle == dir4_UP or i_first_angle == dir4_DW){
            switch(i_second_image){
                case 0:
                    switch(i_second_angle){
                        case dir4_RR: break;
                        case dir4_UP: b_value_to_return=true; break;
                        case dir4_LL: b_value_to_return=true; break;
                        case dir4_DW: break;
                    }
                    break;
                case 1:
                    switch(i_second_angle){
                        case dir4_RR: break;
                        case dir4_UP: b_value_to_return=true; break;
                        case dir4_LL: break;
                        case dir4_DW: b_value_to_return=true; break;
                    }
                    break;
            }
        }
        //first cable I rotated right or left
        break;
}

return b_value_to_return;

