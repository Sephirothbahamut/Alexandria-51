/// verify_arg(arg, obj_type)
var arg = argument0; var obj_type = argument1;
if(arg.object_index != obj_type)
{
    show_error("Expected type " + string(obj_type), true);
}

return arg;
