/// client_destroy(client)
var client = verify(argument0, var_t.object_t, false, Client);
/// ______________________________________

var pos = ds_list_find_index(Manager.list_clients, client);
ds_list_delete(Manager.list_clients, pos);


scrolling_text_create("Player [" + string(client.net_id) + "] " + client.s_name + " has left the game :(");

instance_destroy(client);
