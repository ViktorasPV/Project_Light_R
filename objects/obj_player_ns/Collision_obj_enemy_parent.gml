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
    
    if (hp <= 0) {
    // Check if we are arguably already dying (to prevent spamming the sound)
    if (!instance_exists(obj_death_manager)) {
        
        // 1. Create the manager
        instance_create_depth(0, 0, -16000, obj_death_manager);
        
        // 2. Hide or Deactivate player
        // We don't want the player moving or dying again while the screen is black
        visible = false;
        
        // 3. Stop Player Logic (Optional but recommended)
        // If you have a state machine: state = "dead";
        // Or simply setting speed to 0:
        hspeed = 0;
        vspeed = 0;
    }
}


	
}