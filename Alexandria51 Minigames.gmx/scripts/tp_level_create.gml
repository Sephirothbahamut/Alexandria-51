/// tp_level_create(i_grid_w, i_grid_h, i_pattern_length, i_n_symbols)
var i_grid_w = verify(argument0, var_t.int_t); 
var i_grid_h = verify(argument1, var_t.int_t);
var i_pattern_length = verify(argument2, var_t.int_t); 
var i_n_symbols = verify(argument3, var_t.int_t);

var level_data = array_create(3);

// genera matrice di tile (width, height)
var grid_tile = tp_grid_create(i_grid_w, i_grid_h, i_n_symbols);

// genera percorso
var arr_coords_path = array_flip(tp_path_create(i_grid_w, i_grid_h));

// genera pattern
var arr_i_pattern = tp_pattern_create(i_pattern_length, i_n_symbols);

// cambia il simbolo delle tile del percorso secondo pattern
for(var i = 0; i < array_length_1d(arr_coords_path); i++)
{
    var coords_path_elem = arr_coords_path[i];
    grid_tile[# coords_path_elem[X], coords_path_elem[Y]].i_sol = i;
    grid_tile[# coords_path_elem[X], coords_path_elem[Y]].image_index = arr_i_pattern[i mod i_pattern_length];
}


// impacchetta tutto
level_data[0] = grid_tile;
level_data[1] = arr_coords_path[0];
level_data[2] = arr_i_pattern;

return level_data;

