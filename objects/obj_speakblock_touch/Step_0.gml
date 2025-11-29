// Check collision
if (place_meeting(x, y, obj_player_ns)) {
    
    // Only trigger if active
    if (active == true) {
        create_textbox(text_id);
        active = false; // Turn off immediately to prevent spamming
        
        // --- ONE TIME LOGIC ---
        if (one_time == true) {
            instance_destroy(); // Destroy the trigger completely
        }
    }

} else {
    // Player is NOT touching the block
    
    // Only reset the trigger if it is REUSABLE.
    // If it is one_time, we don't care (and if we used instance_destroy above, this won't run anyway).
    if (one_time == false) {
        active = true; 
    }
}