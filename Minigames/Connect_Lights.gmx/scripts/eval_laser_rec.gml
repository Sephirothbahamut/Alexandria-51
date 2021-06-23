/// eval_laser_rec(coords_curr, coords_dir_laser)
// returns hit coords or noone
var coords_curr = argument0;
var coords_dir_laser = argument1;

// caso base : indice non valido
if(!valid_index(coords_curr[X], coords_curr[Y], 
            ds_grid_width(Connect_Lights_Controller.grid_tile), 
            ds_grid_height(Connect_Lights_Controller.grid_tile)))
        return noone;

var hit = Connect_Lights_Controller.grid_tile[# coords_curr[X], coords_curr[Y]];

// caso base : hit tile
if(hit != noone && hit.object_index != Floor)
{
    if(hit.object_index == Reflector)  
        Reflector_calc_reflection(hit, axis_to_dir4(coords_dir_laser[X], coords_dir_laser[Y]));
    else
        hit.dir4_incoming_hit = axis_to_dir4(coords_dir_laser[X], coords_dir_laser[Y]);
    return coords_curr;
}

// caso passo : procedi
else
{
    var coords_next = coords_sum(coords_curr, coords_dir_laser);
    var coords_result = eval_laser_rec(coords_next, coords_dir_laser);
    if(coords_result == noone)
    {
        coords_result = coords_curr;
    }
    
    return coords_result;
}
