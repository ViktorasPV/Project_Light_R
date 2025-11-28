if (has_exclaimed_on_hit == false) {
    text_id = "hit_by_enemy";
    has_exclaimed_on_hit = true;
    create_textbox(text_id);

}

if (alarm[0] < 0)
{
	hp-= other.damage;
	alarm[0] = 60;
	image_blend = c_red;
    
    var dir = point_direction(other.x, other.y, x, y);
    var kb_strength = 4;
    kb_x = lengthdir_x(kb_strength, dir);
    kb_y = lengthdir_y(kb_strength, dir);
    kb_timer = 10; // knockback lasts 10 steps
	
	if (hp <= 0)
	{
		room_restart();
        hp = 10;
        x = 62;
        y = 95;
	}
}