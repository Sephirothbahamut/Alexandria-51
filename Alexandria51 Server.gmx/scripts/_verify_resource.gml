/// _verify_resource(arg, type, b_nullable)
var arg = argument0;
var type = argument1;
var nullable = argument2;
/// ______________________________________

if nullable and arg == noone return 0;

switch(type)
    {
    case var_t.sprite_t    : if not      sprite_exists(arg) _verify_err(type); break;
    case var_t.sound_t     : if not       sound_exists(arg) _verify_err(type); break;
    case var_t.background_t: if not  background_exists(arg) _verify_err(type); break;
    case var_t.path_t      : if not        path_exists(arg) _verify_err(type); break;
    case var_t.script_t    : if not      script_exists(arg) _verify_err(type); break;
    case var_t.shader_t    : if not shader_is_compiled(arg) _verify_err(type); break;
    case var_t.font_t      : if not        font_exists(arg) _verify_err(type); break;
    case var_t.timeline_t  : if not    timeline_exists(arg) _verify_err(type); break;
    case var_t.object_t    : if not      object_exists(arg) _verify_err(type); break;
    case var_t.room_t      : if not        room_exists(arg) _verify_err(type); break;
    }
