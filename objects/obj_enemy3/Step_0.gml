// 1. DEAD CHECK: If HP is 0, stop moving and stop logic immediately!
if (hp <= 0) {
    // Apply knockback if you want him to slide backward while dying
    if (alarm[1] > 0) {
        x += kb_x;
        y += kb_y;
    }
    exit; // STOP EVENT HERE. Do not run movement code below.
}

// ---------------------------------------------------------
// EVERYTHING BELOW HERE ONLY RUNS IF HE IS ALIVE
// ---------------------------------------------------------

// Movement base
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

// --- NORMAL MOVEMENT ---
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);

if (alarm[1] > 0) {
    x += kb_x;
    y += kb_y;
}

// Check for player
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
    target_x = obj_player.x;
    target_y = obj_player.y;
    move_speed = 2.5;
    
    // --- FIXED SOUND LOGIC ---
    // Only play if we haven't screamed yet.
    if (has_screamed == false) {
        audio_play_sound(snd_enemy3, 5, false);
        has_screamed = true; // Mark as done so it never plays again
    }
    
    sprite_index = spr_enemy3_a;
    running = true;
}