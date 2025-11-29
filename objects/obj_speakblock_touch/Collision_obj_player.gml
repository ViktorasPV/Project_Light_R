/// @description Trigger Dialogue (Replace old text)

// Only trigger if we aren't ALREADY displaying THIS specific text ID
// (We check the obj_textbox to see if its current text_id matches, assuming you save it)
// A simpler way is to just check a cooldown or trigger variable.

if (variable_instance_exists(id, "text_id")) {
    
    // Check if a textbox exists
    if (instance_exists(obj_textbox)) {
        // If a textbox exists, only replace it if it's NOT the same one we are trying to create.
        // This prevents the text from resetting 60 times a second while you stand in the block.
        // (This requires passing the text_id into the textbox object to check it, 
        // OR simply using a specialized variable in the trigger).
    }
    
    // Simplest approach: Just create it. The new logic handles the swap.
    // BUT we need to prevent 60 swaps per second.
    
    if (!instance_exists(obj_textbox)) {
         create_textbox(text_id);
    }
    else {
        // If a textbox exists, we force a swap ONLY if the player just entered the trigger
        // This is best handled by a "triggered" variable in the Create Event of the trigger
    }
}

if (!one_time) {
    // normal reusable
    create_textbox(text_id);
}
else {
    // one-time
    if (!passed) {
        create_textbox(text_id);
        passed = true;
    }
}