/// _net_client_set_name(client, buffer)
var client = verify(argument0, var_t.object_t, false, Client);
var buffer = argument1;
/// ______________________________________

var s_name = buffer_read(buffer, buffer_string);

var client_from_name = server_client_from_name(s_name);

var b_tmp = false;
//new player
if(client_from_name == noone) { b_tmp = true; }
//reconnecting player
else if (client_from_name.socket == -1) { b_tmp = true; }

if(b_tmp)
    {
    client.s_name = s_name;
    if(client_from_name != noone) 
        {//Returning client
        client_from_name.socket = client.socket; //Give my socket to the old unused client object
        instance_destroy(client); //Kill my new client object
        client = client_from_name;//He is now me
        }
    else
        {//New client
        client.u_pid = u_pid_last; u_pid_last++;
        }
    
    //Tell existing clients about the new one
    var buffer_joined = server_create_buffer(net_t.client_joined);
    buffer_write(buffer_joined, buffer_u8, client.u_pid);
    buffer_write(buffer_joined, buffer_string, client.s_name);
    server_send_all_except(client, buffer_joined);
    
    buffer_delete(buffer_joined);
    
    //Tell the new client he's good to go, give him his id
    var buffer_accepted = server_create_buffer(net_t.client_name_accepted);
    buffer_write(buffer_accepted, buffer_u8, client.u_pid);
    
    //Tell the client about all the other clients
    var u_others_count = ds_list_size(list_clients);
    
    //Will not send ones which aren't yet accepted
    var u_sending_count = u_others_count;
    for(var u = 0; u < u_others_count; u++)
        {
        var client_other = list_clients[| u];
        if(client_other.socket == -1)  { u_sending_count--; }
        }
    buffer_write(buffer_accepted, buffer_u8, u_sending_count);
    
    for(var u = 0; u < u_others_count; u++)
        {
        var client_other = list_clients[| u];
        if(client_other.socket != -1) 
            {//Connected but didn't get accepted yet
            buffer_write(buffer_accepted, buffer_u8,     client_other.u_pid);
            buffer_write(buffer_accepted, buffer_string, client_other.s_name);
            }
        }
    
    server_send_to(client, buffer_accepted);
    buffer_delete(buffer_accepted);
    
    if(room == r_start)
        {
        //The condition after "and" verifies that all the connected clients have been accepterd.
        if(ds_list_size(list_clients) == u_max_players and u_sending_count == u_others_count)
            { _server_full_players(); }
        }
    else
        {
        var buffer_level = rooms_controller_create_buffer_level();
        server_send_to(client, buffer_level);
        buffer_delete(buffer_level);
        }
    }
else
    {
    var buffer_rejected = server_create_buffer(net_t.client_name_rejected);
    server_send_to(client, buffer_rejected);
    buffer_delete(buffer_rejected);
    }
