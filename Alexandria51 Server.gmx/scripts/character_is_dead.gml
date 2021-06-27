/// character_is_dead(character)
var character = verify(argument0, var_t.object_t, false, Character);
/// ______________________________________
return character.u_hp <= 0 and DEATH_IS_REAL;
