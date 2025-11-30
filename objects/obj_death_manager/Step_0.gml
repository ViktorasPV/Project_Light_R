if (state == "WAIT") {
    // Stay black for a moment so the sound plays and player realizes they died
    timer--;
    
    if (timer <= 0) {
        // Restart the room
        room_restart();
        
        // Move player to spawn point (See logic below)
        // We do this here to ensure the player snaps BEFORE the screen fades in
        if (instance_exists(obj_player) && instance_exists(obj_spawn_point)) {
            // Find the spawn point that is "active"
            with (obj_spawn_point) {
                if (active) {
                    obj_player.x = x;
                    obj_player.y = y;
                }
            }
        }
        
        // Switch to Fade In mode
        state = "FADE_IN";
    }
}
else if (state == "FADE_IN") {
    // Slowly reduce alpha
    alpha -= 0.02; // Adjust speed here (lower is slower)
    
    if (alpha <= 0) {
        instance_destroy(); // Job done, delete self
    }
}