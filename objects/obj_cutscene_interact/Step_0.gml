/// @description Handle E Prompt and Trigger Logic

// ---------------------------------------------------------
// 1. VISIBILITY LOGIC (The "E" Popup)
// ---------------------------------------------------------

// Always check if the popup exists before trying to access it
if (instance_exists(popup_id)) {
    
    // Check if player is near the radius
    var _is_close = collision_circle(x, y, radius, obj_player, false, true);
    
    // Check if a textbox is already open (we hide E if talking)
    var _textbox_exists = instance_exists(obj_textbox);

    // Show 'E' only if: Close + No Textbox + Trigger Active
    if (_is_close && !_textbox_exists && active) {
        popup_id.visible = true;
    } else {
        popup_id.visible = false;
    }
}

// ---------------------------------------------------------
// 2. INTERACTION LOGIC (Pressing E)
// ---------------------------------------------------------

// Ensure player exists to avoid errors
if (instance_exists(obj_player)) {
    
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // Check if close enough (50px) and E is pressed
    if (dist < 50 && keyboard_check_pressed(ord("E"))) {   
        
        // Only run if the trigger hasn't been used yet
        if (active) {
            
            // A. FREEZE THE GAME (Critical Fix!)
            global.game_state = GAME_STATE.CUTSCENE;
            
            // B. START THE DIRECTOR
            // Use 'layer' to spawn it on the same layer as this object
            instance_create_layer(x, y, layer, obj_cutscene_director, {
                cutscene_id : cutscene_id,
                text_id : text_id 
            });

            // C. DEACTIVATE THIS TRIGGER
            active = false;
            
            // D. CLEANUP
            // Destroy the visual 'E' prompt immediately
            if (instance_exists(popup_id)) {
                instance_destroy(popup_id);
            }
        }
    }
}