/// verify_range(arg, type, min, max, [b_min_inclusive default true], [b_max_inclusive default false])
if not VERIFY_ENABLED return argument[0];
/// ______________________________________
var arg = argument[0];
var type = argument[1];
var _min = argument[2];
var _max = argument[3];
var b_min_incl = true;
if(argument_count > 4) { b_min_incl = argument[4]; }
var b_max_incl = true;
if(argument_count > 5) { b_min_incl = argument[5]; }
/// ______________________________________
if type < var_t.int_t or type > var_t.stack_t { show_error("Invalid parameter 'type' passed to verify function.", 1); }
/// ______________________________________

// ============================ NUMERIC AND STRING TYPES ============================
if(type >= var_t.int_t and type <= var_t.ufloat_t)
    {
    if(!is_real(arg)) { show_error("Verification failed, expected numeric value.", 1); }
    
    if(type == var_t.int_t  or type == var_t.uint_t)   { if(arg != floor(arg)) { _verify_err(type); } }
    if(type == var_t.uint_t or type == var_t.ufloat_t) { if(arg < 0)           { _verify_err(type); } }
    
    if(
        (arg < _min or arg > _max) ||
        ((not b_min_incl) and (arg == _min)) ||
        ((not b_max_incl) and (arg == _max))
        ) 
        {
        var s_min_incl;
        var s_max_incl;
        if(b_min_incl) { s_min_incl = "["; } else { s_min_ingle = "("; }
        if(b_max_incl) { s_max_incl = "]"; } else { s_max_ingle = ")"; }
        
        show_error("Verification failed, expected " + _type_t_to_str(type) + " in range " + s_min_incl + string(_min) + ", " + string(_max) + s_max_incl + ".", 1);
        }
    }
// ============================ CONTAINER TYPES ============================
else
    {
    show_error("Verify range only works for numeric types.", 1);
    }
    
return arg;
