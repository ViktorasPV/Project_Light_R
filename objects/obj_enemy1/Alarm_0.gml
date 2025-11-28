// Inherit parent
event_inherited();

// Only pick a random target if we are IDLE.
// If we are chasing, the Step Event handles targeting the player directly.
if (enemy_state == "IDLE") {
    
    // Check if player is close enough to spot naturally
    if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player) {
        // Switch to Chase mode!
        enemy_state = "CHASE";
    }
    else {
        // Wander randomly
        target_x = random_range(xstart - 100, xstart + 100);
        target_y = random_range(ystart - 100, ystart + 100);
    }
}

// Reset alarm to check again later (e.g., every 60 frames)
alarm[0] = 60;
