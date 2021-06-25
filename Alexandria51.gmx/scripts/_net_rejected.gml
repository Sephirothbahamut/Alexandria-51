/// _net_rejected()

show_message("Name '" + Manager.s_name + "' is already being used."); 
instance_destroy(Manager);
instance_create(0, 0, Manager);
