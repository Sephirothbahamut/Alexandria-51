/// matrix_create(i_width, i_height)
var i_width = argument0; var i_height = argument1;

var mat;

for(var i = 0; i < i_height; i++)
{
    // Initializing the last element of each row initializes the whole row to 0
    mat[i, i_width - 1] = 0;
}

return mat;

