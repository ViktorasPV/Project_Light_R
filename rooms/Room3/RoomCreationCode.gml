// We need a variable to decide if he should be here.
var _spawn_mentor = false;

// CONDITION 1: Player chose NO (2)
// He goes straight here waiting for you.
if (global.mentor_choice == 2) {
    _spawn_mentor = true;
}

// CONDITION 2: Player chose YES (1) AND Finished the House Event
// He moves here after the cutscene is over.
if (global.mentor_choice == 1 && global.house_event_done == true) {
    _spawn_mentor = true;
}

// --- EXECUTE SPAWN LOGIC ---
if (_spawn_mentor == true) {
    
    // 1. Spawn Mentor (if not already there)
    if (!instance_exists(obj_mentor)) {
        var _men = instance_create_layer(91, 81, "Instances", obj_mentor); // Update coordinates!
        _men.image_xscale = 1.5;
        _men.image_yscale = 1.5;
        
        // 2. Spawn Speakblock (Interaction)
        // We spawn it at the same location as the mentor so the "E" appears over him
        var _talk = instance_create_layer(91, 81, "Instances", obj_speakblock); // Or obj_speakblock_touch
        
        // Set the text ID for this conversation
        _talk.text_id = "mentor_room3_talk"; 
        _talk.one_time = false; // Set to true if you only want to talk once
    }
}
else {
    // If conditions are NOT met, ensure he isn't here
    if (instance_exists(obj_mentor)) {
        instance_destroy(obj_mentor);
    }
    
    // Also remove the speakblock if the mentor isn't here
    // (We search for speakblocks with this specific ID to avoid deleting others)
    with (obj_speakblock) {
        if (text_id == "mentor_room3_talk") instance_destroy();
    }
}