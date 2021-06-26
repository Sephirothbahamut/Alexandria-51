/// rc_injured_scrolling_text(character)
var character = verify(argument0, var_t.object_t, false, Character);
/// ______________________________________

if(character.u_hp <= 0) 
    {
    character.u_hp = 0; 
    scrolling_text("Character " + character.client_owner.s_name + " just died!");
    }
else { scrolling_text("Character " + character.client_owner.s_name + " was injured!"); }
