/// manager_get_client(net_id)
var net_id = argument0;
/// ______________________________________

for(var u = 0; u < ds_list_size(list_clients); u++)
    {
    var client = Manager.list_clients[| u];
    if(client.net_id == net_id) { return client; }
    }
return noone;
