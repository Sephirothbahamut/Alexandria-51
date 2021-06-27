/// cl_Reflector_rotate(reflector, b_clockwise)
var reflector = verify(argument0, var_t.object_t, false, cl_Reflector); 
var b_clockwise = verify(argument1, var_t.bool_t); 

var f_rot = 90;

if(b_clockwise)
    f_rot *= -1;

reflector.image_angle = (reflector.image_angle + f_rot + 360) mod 360;

// Re-calculate lasers
cl_Controller_calculate_lasers()

