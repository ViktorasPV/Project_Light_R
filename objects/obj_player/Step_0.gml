// 1. CALCULATE INPUTS
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// 2. CHECK GAME STATE
if (global.game_state == GAME_STATE.NORMAL) {
    
    // --- KNOCKBACK LOGIC ---
    if (kb_x != 0 || kb_y != 0) {
        // Try moving with collision
        move_and_collide(kb_x, kb_y, [tilemap]); 

        // Apply friction so knockback slows down
        kb_x *= 0.8;
        kb_y *= 0.8;

        // Stop if very small
        if (abs(kb_x) < 0.1) kb_x = 0;
        if (abs(kb_y) < 0.1) kb_y = 0;
    }
    
    // --- MOVEMENT SPEED CONTROL ---
    // (Moved inside state check so pause affects movement properly)
    if (instance_exists(obj_pauser)) {
        move_speed = 0;
    } else {
        move_speed = 1;
    }

    // --- ACTUAL MOVEMENT ---
    // This was previously outside the brackets! Now it is safe.
    move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

    // --- SPRITES AND ANIMATION ---
    var dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);

    if (_hor != 0 or _ver != 0) {
        // Walking → use walk animations FACING mouse
        if (dir_to_mouse > 45 && dir_to_mouse < 135)
            sprite_index = spr_player_walk_up;
        else if (dir_to_mouse > 225 && dir_to_mouse < 315)
            sprite_index = spr_player_walk_down;
        else if (dir_to_mouse <= 45 || dir_to_mouse >= 315)
            sprite_index = spr_player_walk_right;
        else
            sprite_index = spr_player_walk_left;
    } else {
        // Idle → pick idle sprites based on direction to mouse
        if (dir_to_mouse > 45 && dir_to_mouse < 135)
            sprite_index = spr_player_idle_up;
        else if (dir_to_mouse > 225 && dir_to_mouse < 315)
            sprite_index = spr_player_idle_down;
        else if (dir_to_mouse <= 45 || dir_to_mouse >= 315)
            sprite_index = spr_player_idle_right;
        else
            sprite_index = spr_player_idle_left;
    }

    // --- COMBAT ---
    
    // ATTACK
    if (mouse_check_button_pressed(mb_left ) & can_attack = true) {
        can_attack = false;
        alarm[1] = 30;
        audio_play_sound(snd_sword_swing, 5, false);
        audio_sound_pitch(snd_sword_swing, random_range(0.9, 1.15));
        var inst = instance_create_depth(x, y, depth, obj_attack);
        inst.image_angle = dir_to_mouse;
        inst.damage *= damage;
    }

    // PARRY
    if (mouse_check_button_pressed(mb_right) && !instance_exists(obj_parry)) {
        can_attack = false;
        alarm[1] = 60;
        audio_play_sound(snd_sword_swing, 5, false);
        audio_sound_pitch(snd_sword_swing, random_range(0.9, 1.15));
        var inst = instance_create_depth(x, y, depth, obj_parry);
        inst.image_angle = dir_to_mouse;
        inst.damage *= damage * 2;
    }
    
    // Manual stop check
    if (!can_move) {
        _hor = 0;
        _ver = 0;
    }

} // <--- THE IF STATEMENT CLOSES HERE NOW
else {
    // --- CUTSCENE STATE ---
    speed = 0;
    // We don't change sprites here, so the Cutscene Director can control animations
}

// --- HUD FADE LOGIC (Always runs) ---
var _target_alpha = (global.game_state == GAME_STATE.NORMAL) ? 1 : 0;
hud_alpha = lerp(hud_alpha, _target_alpha, 0.05);
if (hud_alpha < 0.01) hud_alpha = 0;
