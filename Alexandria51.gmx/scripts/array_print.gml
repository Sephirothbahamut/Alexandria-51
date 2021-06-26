/// array_print(arr, scr_to_string)
var arr = argument0;
var scr_to_string = argument1;

for(var i = 0; i < array_height_2d(arr); i++)
{
    show_debug_message("--------------------------------");
    for(var j = 0; j < array_length_2d(arr, i); j++)
        show_debug_message(script_execute(scr_to_string, arr[i,j]));
}



