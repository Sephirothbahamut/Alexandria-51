/// cl_Sensor_hit(sensor)
var sensor = verify(argument0, var_t.object_t, false, cl_Sensor); 

sensor.b_on = true;
        
cl_Controller_check();

