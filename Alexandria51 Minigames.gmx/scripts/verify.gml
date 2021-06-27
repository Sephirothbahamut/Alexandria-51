/// verify(arg, type, [b_nullable], [obj_index (If missing or noone will verify object resource; if present else will verify object instance.)])
if not VERIFY_ENABLED return argument[0];
/// ______________________________________
enum var_t
    {
    int_t, uint_t, float_t, ufloat_t, bool_t, char_t, string_t, 
    sprite_t, sound_t, background_t, path_t, script_t, shader_t, font_t, timeline_t, object_t, room_t,
    array_t, list_t, grid_t, map_t, queue_t, stack_t
    };
/// ______________________________________
var arg = argument[0];
var type = argument[1];
var nullable = false;
if(argument_count > 2) { nullable = argument[2]; }
/// ______________________________________
if type < var_t.int_t or type > var_t.stack_t { show_error("Invalid parameter 'type' passed to verify function.", 1); }
/// ______________________________________

// ============================ NUMERIC AND STRING TYPES ============================
if(type >= var_t.int_t and type <= var_t.string_t) 
    {
    _verify_numstr(arg, type); 
    }
// ============================ RESOURCE TYPES ============================
else if(type >= var_t.sprite_t and type <= var_t.room_t)
    {
    if(type == var_t.object_t)
        {
        var obj_index = noone;
        if(argument_count == 4) { obj_index = argument[3]; }
        
        if(obj_index != noone) { _verify_instance(arg, type, nullable, obj_index); }
        else { _verify_resource(arg, type, nullable); }
        }
    else { _verify_resource(arg, type, nullable); }
    }
// ============================ CONTAINER TYPES ============================
else if(type >= var_t.array_t and type <= var_t. stack_t)
    {
    show_error("For verifying data structures use 'verify_container'.", 1);
    }
    
return arg;
