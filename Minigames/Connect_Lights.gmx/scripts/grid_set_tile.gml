/// grid_set_tile(grid, _x, _y, new_tile)
var grid_tile = argument0;
var _x = argument1; var _y = argument2; 
var new_tile = argument3;

if(grid_tile[# _x, _y] != noone)
    instance_destroy(grid_tile[# _x, _y]);
    
grid_tile[# _x, _y] = new_tile;
