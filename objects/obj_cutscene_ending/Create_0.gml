// State Machine
state = 0;
timer = 0;

// Fade Variables
fade_alpha = 0;
fade_color = c_black;

// Movement Settings
target_y = obj_player.y - 100; // How far up to walk
walk_spd = 0.5; // Slow walk speed

// Video Variables
video_active = false;

// Disable Player Input immediately
if (variable_instance_exists(obj_player, "can_move")) {
    obj_player.can_move = false;
}