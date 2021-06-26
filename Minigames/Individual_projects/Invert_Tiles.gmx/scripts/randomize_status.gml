///randomize_status( arr_tile_ring )
var arr_tile_ring = argument0;
var u_ran_count_status = irandom(2);
//show_debug_message(u_ran_count_status);
var i_list = ds_list_create();
for(var i = 0; i<u_ran_count_status; i++)
{
    do
    {
        var u_ran_index = irandom(array_length_1d(arr_tile_ring)-1);
    }until(ds_list_find_index(i_list,u_ran_index) == -1);
    ds_list_add(i_list, u_ran_index);
    Tile_toggle(arr_tile_ring[u_ran_index]);
}

