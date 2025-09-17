// Movement base
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

// --- DASH LOGIC ---
if (cooldown_timer > 0) cooldown_timer--;

if (dash_timer > 0) {
    // Actively dashing
    var dash_x = lengthdir_x(dash_speed, dash_dir);
    var dash_y = lengthdir_y(dash_speed, dash_dir);
    move_and_collide(dash_x, dash_y, [tilemap, obj_enemy_parent]);
    dash_timer--;
    if (dash_timer <= 0) {
        cooldown_timer = cooldown_time; // Start cooldown after dash
    }
    exit; // Skip normal movement while dashing
}

if (windup_timer > 0) {
    windup_timer--;
    if (windup_timer <= 0) {
        // Start dash towards locked player position
        dash_dir = point_direction(x, y, dash_target_x, dash_target_y);
        dash_timer = 10; // frames for dash duration
    }
    exit; // Skip normal movement during wind-up
}

if (dash_timer > 0) {
    var move_x = lengthdir_x(dash_speed, dash_dir);
    var move_y = lengthdir_y(dash_speed, dash_dir);
    
    move_and_collide(move_x, move_y, [tilemap, obj_enemy_parent]);
    
    dash_timer--;
    if (dash_timer <= 0) {
        // Reset after dash
        dash_dir = 0;
    }
    exit;
}

// Trigger dash if player is close and cooldown is over
if (cooldown_timer <= 0 && instance_exists(obj_player) && distance_to_object(obj_player) < dash_range) {
    
    // Get direction to player
    dash_dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    // Extend the dash target beyond the player by 40 pixels (adjust as needed)
    var overshoot = 60;
    dash_target_x = obj_player.x + lengthdir_x(overshoot, dash_dir);
    dash_target_y = obj_player.y + lengthdir_y(overshoot, dash_dir);
    
    // Start wind-up
    windup_timer = dash_windup;
    cooldown_timer = cooldown_time;
}

// --- NORMAL MOVEMENT ---
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);

if (alarm[1] > 0) {
    x += kb_x;
    y += kb_y;
}