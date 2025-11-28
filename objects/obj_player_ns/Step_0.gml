var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));


// Start of obj_player_ns Step Event
if (global.game_state == GAME_STATE.NORMAL) {
    if (kb_x != 0 || kb_y != 0) {
    // Try moving with collision
    move_and_collide(kb_x, kb_y, [tilemap]); // tilemap = Tiles_Col's tilemap ID

    // Apply friction so knockback slows down
    kb_x *= 0.8;
    kb_y *= 0.8;

    // Stop if very small
    if (abs(kb_x) < 0.1) kb_x = 0;
    if (abs(kb_y) < 0.1) kb_y = 0;
}
    
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

    var dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);
//pause
if instance_exists(obj_pauser) {
	move_speed = 0;
}
else {
	move_speed = 1;
}


if (_hor != 0 or _ver != 0)
{
    // Walking → use walk animations FACING mouse
    if (dir_to_mouse > 45 && dir_to_mouse < 135)
        sprite_index = spr_player_walk_up_nos;
    else if (dir_to_mouse > 225 && dir_to_mouse < 315)
        sprite_index = spr_player_walk_down_nos;
    else if (dir_to_mouse <= 45 || dir_to_mouse >= 315)
        sprite_index = spr_player_walk_left_nos;
    else
        sprite_index = spr_player_walk_left_nos;
}
else
{
    // Idle → pick idle sprites based on direction to mouse
    if (dir_to_mouse > 45 && dir_to_mouse < 135)
        sprite_index = spr_player_idle_up_nos;
    else if (dir_to_mouse > 225 && dir_to_mouse < 315)
        sprite_index = spr_player_idle_down_nos;
    else if (dir_to_mouse <= 45 || dir_to_mouse >= 315)
        sprite_index = spr_player_idle_right_nos;
    else
        sprite_index = spr_player_idle_left_nos;
}

if (!can_move) {
    _hor = 0;
    _ver = 0;
}
} else {
    // Stop movement if not in NORMAL state
    hsp = 0;
    vsp = 0;
    // Potentially update animation to idle here
}


// --- HUD FADE LOGIC ---
// If state is NORMAL, aim for alpha 1. If CUTSCENE, aim for alpha 0.
var _target_alpha = (global.game_state == GAME_STATE.NORMAL) ? 1 : 0;

// Smoothly interpolate current alpha towards target (0.05 is the speed)
hud_alpha = lerp(hud_alpha, _target_alpha, 0.05);

// Snap to 0 if very close to avoid ghosting
if (hud_alpha < 0.01) hud_alpha = 0;

