/// rc_random_room_type()
var rc = Rooms_controller.id;

var rnd = random(1);
for(var u = room_type_t.r_empty; u < room_type_t.COUNT; u++)
    {
    if(rnd <= rc.array_chance[u]) { return u; }
    }
return room_type_t.r_empty;
