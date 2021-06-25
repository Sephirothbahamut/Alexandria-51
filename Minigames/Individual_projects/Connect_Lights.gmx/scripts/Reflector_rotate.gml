/// Reflector_rotate(reflector, b_clockwise)
var reflector = argument0;
var b_clockwise = argument1;

var f_rot = 90;

if(b_clockwise)
    f_rot *= -1;

reflector.image_angle = (reflector.image_angle + f_rot + 360) mod 360;

// Re-calculate lasers
Connect_Lights_Controller_calculate_lasers()
