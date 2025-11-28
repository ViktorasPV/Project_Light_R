/// @description Start Cutscene 
if (!cutscene_started) {
    // 1. Lock the game state
    global.game_state = GAME_STATE.CUTSCENE;
    
    // 2. Stop the player
    with (other) {
        hsp = 0; // Horizontal speed
        vsp = 0; // Vertical speed
        // Potentially set player's sprite to idle
    }
    
    // 3. Create the Cutscene Director object
    // This object will handle the timing, camera movement, and dialogue.
    instance_create_layer(x, y, "Instances", obj_cutscene_director, {
        cutscene_id: cutscene_sequence // Pass the ID to the director
    });
    
    // 4. Mark the trigger as used (optional: to prevent re-triggering)
    cutscene_started = true;
    instance_destroy(); // Destroy the trigger if it's one-time only
}