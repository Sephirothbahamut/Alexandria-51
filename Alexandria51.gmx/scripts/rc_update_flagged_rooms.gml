/// rc_update_flagged_rooms();

with(MRoom)
    {
    if b_event_flag
        {
        switch(room_type)
            {
            case room_type_t.r_mine_on:  mroom_set_type(id, room_type_t.r_mine_off); break;
            case room_type_t.r_mine_off: mroom_set_type(id, room_type_t.r_mine_on);  break;
            }
        
        b_event_flag = false;
        }
    }
