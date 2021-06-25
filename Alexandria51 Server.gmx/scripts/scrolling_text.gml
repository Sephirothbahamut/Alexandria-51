/// scrolling_text(s_text)
var s_text = verify(argument0, var_t.string_t);
/// ______________________________________

if(instance_number(Scrolling_text_manager) == 0)
    {
    var ret = instance_create(0, 0, Scrolling_text_manager);
    ret.s_text = s_text;
    }
else
    {
    Scrolling_text_manager.s_text += "#" + s_text;
    
    with(Scrolling_text_manager) 
        {
        if(string_length(s_text) > 100) { s_text = string_copy(s_text, 100 - string_length(s_text), 100)}
        event_user(0); 
        }
    }
