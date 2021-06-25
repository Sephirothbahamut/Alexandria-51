/// cl_grid_set_tile(grid, _x, _y, new_tile)
var grid_tile = verify_container(argument0, var_t.grid_t); 
var _x = verify(argument1, var_t.uint_t); 
var _y = verify(argument2, var_t.uint_t); 
var new_tile = argument3;//verify(argument3, var_t.object_t);

if(grid_tile[# _x, _y] != 0)
{
    var to_del = grid_tile[# _x, _y];
    instance_destroy(to_del);
}
    
grid_tile[# _x, _y] = new_tile;

