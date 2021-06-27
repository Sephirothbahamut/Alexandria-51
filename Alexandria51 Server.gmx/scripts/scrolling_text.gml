/// scrolling_text(s_text)
var s_text = verify(argument0, var_t.string_t);
/// ______________________________________

var scrtexmng = Scrolling_text_manager;

var lower = string_lower(s_text);
if (string_count("le toucan", lower) > 0) and (string_count("has arrived", lower) > 0)
    { s_text = scrtexmng.toucan; }

ds_list_add(scrtexmng.list_s_messages, s_text);
scrtexmng.u_current_last = ds_list_size(scrtexmng.list_s_messages) - 1;
