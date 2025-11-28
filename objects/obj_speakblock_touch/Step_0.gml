if (place_meeting(x, y, obj_player)) {
    
    // Only trigger if we are currently active (haven't triggered yet for this touch)
    if (active == true) {
        create_textbox(text_id);
        active = false; // Turn off so we don't spawn 60 textboxes a second
    }
    
} else {
    // Player is NOT touching the block
    // Reset so it can be triggered again if they walk away and come back
    active = true; 
}