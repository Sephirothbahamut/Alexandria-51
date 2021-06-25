/// object_spawner(_x, _y, i_grid_w, i_grid_h, f_orig_x, f_orig_y )
var _x = argument0;         var _y = argument1;
var i_grid_w = argument2;   var i_grid_h = argument3;
var f_orig_x = argument4;   var f_orig_y = argument5;
var obj_spawned = noone;
var i_to_spawn;

randomize();
    
switch(i_to_spawn)
{
    case 0: break;
    case 1: obj_spawned = Reflector_create(_x, _y, f_orig_x, f_orig_y); break;
    case 2: obj_spawned = Emitter_create(_x, _y, f_orig_x, f_orig_y); break;
    case 3: obj_spawned = Sensor_create(_x, _y, f_orig_x, f_orig_y); break;
    case 4: obj_spawned = Wall_create(_x, _y, f_orig_x, f_orig_y); break;
}

return obj_spawned;
