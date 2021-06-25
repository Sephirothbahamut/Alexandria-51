/// manager_update_after_room_change()
/*
NOTE:
After a room change instances indices are no longer valid, including 
persistent objeccts; so all indices stored in the lists must be updated
*/

ds_list_clear(Manager.list_clients)
with(Client) { ds_list_add(Manager.list_clients, id); }
