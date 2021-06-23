/// level_create(i_grid_w, i_grid_h, i_n_cables)
var i_grid_w = argument0; var i_grid_h = argument1;
var i_n_cables = argument2;

var level_data = array_create(3);

// genera matrice di cables (width, height)
var grid_tile = grid_create(i_grid_w, i_grid_h, i_n_cables);

// genera percorso
var arr_coords_path = array_flip(path_create(i_grid_w, i_grid_h));

//sovrascrive i cavi per farli corrispondere al percorso
var coords_prev_path_elem = arr_coords_path[0];
var coords_path_elem = 0;
var coords_next_path_elem = 0;

//la prima immagine del path deve avere il numero 0
grid_tile[# coords_prev_path_elem[X], coords_prev_path_elem[Y]].image_index = 0;
grid_tile[# coords_prev_path_elem[X], coords_prev_path_elem[Y]].i_sol = 0;

// cambia il simbolo delle tile del percorso secondo pattern
for(var i = 1; i < array_length_1d(arr_coords_path)-1; i++)
{
    coords_prev_path_elem = arr_coords_path[i-1];
    coords_path_elem = arr_coords_path[i];
    coords_next_path_elem = arr_coords_path[i+1];
    if(coords_align(coords_prev_path_elem,coords_next_path_elem)){
        grid_tile[# coords_path_elem[X], coords_path_elem[Y]].image_index = 1;
    }else{
        grid_tile[# coords_path_elem[X], coords_path_elem[Y]].image_index = 0;
    }
    grid_tile[# coords_path_elem[X], coords_path_elem[Y]].i_sol = i;
    
    
}
//la prima immagine del path deve avere come numero la lunghezza del path
grid_tile[# coords_next_path_elem[X], coords_next_path_elem[Y]].image_index = 0;
grid_tile[# coords_next_path_elem[X], coords_next_path_elem[Y]].i_sol = array_length_1d(arr_coords_path)-1;

// impacchetta tutto
level_data[0] = grid_tile;
level_data[1] = arr_coords_path[0];
level_data[2] = arr_coords_path[i];

return level_data;
