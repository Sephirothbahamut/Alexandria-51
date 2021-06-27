/// _verify_instance(arg, type, b_nullable, obj)
var arg = verify(argument0, var_t.uint_t);
var type = argument1;
var nullable = argument2;
var obj = argument3;
/// ______________________________________

if nullable and arg == noone return 0;

if(arg.object_index != obj) { show_error("Verification failed, expected instance of type" + object_get_name(obj) + ".", 1); }
