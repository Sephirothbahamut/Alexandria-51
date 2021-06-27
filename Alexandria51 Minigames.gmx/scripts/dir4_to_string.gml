/// dir4_to_string(dir4, b_short: default false)

if(argument_count == 1 or not argument[1])
    {
    switch(argument[0])
        {
        case dir4_RR: return "right";
        case dir4_UP: return "up";
        case dir4_LL: return "left";
        case dir4_DW: return "down";
        }
    }
else
    {
    switch(argument[0])
        {
        case dir4_RR: return "RR";
        case dir4_UP: return "UP";
        case dir4_LL: return "LL";
        case dir4_DW: return "DW";
        }
    }
return "INVALID INPUT";
