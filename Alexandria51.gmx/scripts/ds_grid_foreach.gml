/// ds_grid_foreach(grid, script, [arr_additional_arguments])
//DO NOT USE VERIFY IN THIS SCRIPT, IT IS CALLED INSIDE VERIFY
var grid = argument[0];
var script = argument[1];

for(var u_x = 0; u_x < ds_grid_width(grid); u_x++)
    {
    for(var u_y = 0; u_y < ds_grid_height(grid); u_y++)
        {
        if(argument_count == 2) { script_execute(grid[# u_x, u_y]); }
        else
            {
            var args = array_create();
            array_copy
            }
        }
    }
