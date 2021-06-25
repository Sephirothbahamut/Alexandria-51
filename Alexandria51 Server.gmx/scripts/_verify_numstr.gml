/// _verify_numstr(arg, type)
var arg = argument0;
var type = argument1;
/// ______________________________________

if(type >= var_t.int_t and type <= var_t.ufloat_t)
    {
    if(!is_real(arg)) { show_error("Verification failed, expected numeric value.", 1); }
    
    if(type == var_t.int_t  or type == var_t.uint_t)   { if(arg != floor(arg)) { _verify_err(type); } }
    if(type == var_t.uint_t or type == var_t.ufloat_t) { if(arg < 0)           { _verify_err(type); } }
    }
else if(type == var_t.bool_t) { if(!is_bool(arg) and !is_real(arg)) { _verify_err(type); } }
else if(type == var_t.char_t or type == var_t.string_t)
    {
    if(!is_string(arg)) { _verify_err(type); }
    if(type == var_t.char_t) { if(string_length(arg) != 1) { _verify_err(type); } }
    }
