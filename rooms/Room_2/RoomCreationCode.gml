// Check if the player has already made a choice (1 = Yes, 2 = No)
// If it is NOT 0, that means the cutscene is finished and Mentor should be gone.
if (global.mentor_choice != 0) {
    
    // 1. Remove the Mentor
    if (instance_exists(obj_mentor)) {
        instance_destroy(obj_mentor);
    }
    
    // 2. Remove the Cutscene Trigger (The "E" Prompt)
    // This prevents the cutscene from being playable again.
    with (obj_cutscene_interact) {
        if (cutscene_id == 4) {
            instance_destroy();
        }
    }
}