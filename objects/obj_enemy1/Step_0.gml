if (global.game_state == GAME_STATE.NORMAL) {
    
    // --- STATE LOGIC ---
    
    // If the director set us to CHASE, or we are naturally chasing:
    if (enemy_state == "CHASE") {
        if (instance_exists(obj_player_ns)) {
            target_x = obj_player_ns.x;
            target_y = obj_player_ns.y;
        }
    }
    
    // Calculate movement input based on current target
    var _hor = clamp(target_x - x, -1, 1);
    var _ver = clamp(target_y - y, -1, 1);

    // --- DASH LOGIC ---
    if (cooldown_timer > 0) cooldown_timer--;

    // Phase 3: Actively Dashing
    if (dash_timer > 0) {
        var dash_x = lengthdir_x(dash_speed, dash_dir);
        var dash_y = lengthdir_y(dash_speed, dash_dir);
        move_and_collide(dash_x, dash_y, [tilemap, obj_enemy_parent]);
        
        dash_timer--;
        if (dash_timer <= 0) {
            cooldown_timer = cooldown_time; // Start cooldown
            dash_dir = 0; // Reset dir
            // Optional: Switch back to chase sprite
            // sprite_index = spr_enemy1_move; 
        }
        exit; // Skip normal movement
    }

    // Phase 2: Windup
    if (windup_timer > 0) {
        windup_timer--;
        if (windup_timer <= 0) {
            // FIRE THE DASH
            dash_dir = point_direction(x, y, dash_target_x, dash_target_y);
            dash_timer = 10; // Dash duration
            
            // Play Dash Sound Here if you want
            // audio_play_sound(snd_enemy_dash, 1, false);
        }
        exit; // Skip normal movement
    }

    // Phase 1: Trigger Dash
    // (Consolidated logic: Works for both "CHASE" state and random "IDLE" encounters)
    if (cooldown_timer <= 0 && instance_exists(obj_player)) {
        
        var dist = distance_to_object(obj_player);
        
        // If close enough to dash
        if (dist < dash_range) {
            // Force state to CHASE if we dash (so he doesn't walk away after)
            enemy_state = "CHASE"; 
            
            
            // Visuals
            dash_dir = point_direction(x, y, obj_player.x, obj_player.y);
            image_xscale = (lengthdir_x(1, dash_dir) >= 0) ? 1 : -1;
            sprite_index = spr_enemy1_dash;
            
            // Calculate Overshoot
            var overshoot = 60;
            dash_target_x = obj_player.x + lengthdir_x(overshoot, dash_dir);
            dash_target_y = obj_player.y + lengthdir_y(overshoot, dash_dir);
            
            // Start Timers
            windup_timer = dash_windup;
            cooldown_timer = cooldown_time;
        }
    }

    // --- NORMAL MOVEMENT ---
    // Only move if we aren't winding up or dashing (handled by 'exit' above)
    move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);

    // Knockback
    if (alarm[1] > 0) {
        x += kb_x;
        y += kb_y;
    }

    // Facing direction (Normal movement)
    var _dx = x - xprevious;
    if (_dx != 0) image_xscale = sign(_dx);
    
} else {
    // --- CUTSCENE PAUSE ---
    speed = 0;
    // image_speed = 0; 
}

if instance_exists(obj_pauser) {
	move_speed = 0;
}
else {
	move_speed = 1;
}

