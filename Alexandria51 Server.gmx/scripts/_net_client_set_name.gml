/// _net_client_set_name(client, buffer)
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________

var s_name = buffer_read(buffer, buffer_string);

if(server_name_available(s_name))
    {
    client.s_name = s_name;
    scrolling_text_create("Player [" + string(client.socket) + "] " + client.s_name + " has joined the game!");
    
    //Tell existing clients about the new one
    var buffer_joined = server_create_buffer(net_t.client_joined);
    buffer_write(buffer_joined, buffer_u8, client.socket);
    buffer_write(buffer_joined, buffer_string, client.s_name);
    server_send_all_except(client, buffer_joined);
    
    buffer_delete(buffer_joined);
    
    //Tell the new client he's good to go, give him his id
    var buffer_accepted = server_create_buffer(net_t.client_name_accepted);
    
    //Tell the client about all the other clients
    var u_others_count = ds_list_size(list_clients);
    
    //Will not send ones which aren't yet accepted
    var u_sending_count = u_others_count;
    for(var u = 0; u < u_others_count; u++)
        {
        var client_other = list_clients[| u];
        if(client_other.s_name == "")  { u_sending_count--; }
        }
    buffer_write(buffer_accepted, buffer_u8, u_sending_count);
    
    for(var u = 0; u < u_others_count; u++)
        {
        var client_other = list_clients[| u];
        if(client_other.s_name != "") 
            {//Connected but didn't get accepted yet
            buffer_write(buffer_accepted, buffer_u8,     client_other.socket);
            buffer_write(buffer_accepted, buffer_string, client_other.s_name);
            }
        }
    
    server_send_to(client, buffer_accepted);
    buffer_delete(buffer_accepted);
    }
else
    {
    var buffer_rejected = server_create_buffer(net_t.client_name_rejected);
    server_send_to(client, buffer_rejected);
    buffer_delete(buffer_rejected);
    }
