switch(argument0)
    {
    case var_t.int_t       : return "integer";
    case var_t.uint_t      : return "unsigned integer";
    case var_t.float_t     : return "float";
    case var_t.ufloat_t    : return "unsigned float";
    case var_t.bool_t      : return "boolean";
    case var_t.char_t      : return "character";
    case var_t.string_t    : return "string";
    case var_t.sprite_t    : return "sprite resource";
    case var_t.sound_t     : return "sound resource";
    case var_t.background_t: return "background resource";
    case var_t.path_t      : return "path resource";
    case var_t.script_t    : return "script resource";
    case var_t.shader_t    : return "shader resource";
    case var_t.font_t      : return "font resource";
    case var_t.timeline_t  : return "timeline resource";
    case var_t.object_t    : return "object resource";
    case var_t.room_t      : return "room resource";
    case var_t.array_t     : return "array container";
    case var_t.list_t      : return "list container";
    case var_t.grid_t      : return "grid container";
    case var_t.map_t       : return "map container";
    case var_t.queue_t     : return "queue container";
    case var_t.stack_t     : return "stack container";
    }
return "UNRECOGNIZED TYPE";
