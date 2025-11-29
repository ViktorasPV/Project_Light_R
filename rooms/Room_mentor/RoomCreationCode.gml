if (global.mentor_event_done == true) {
    // Destroy the Mentor (Backup check)
    if (instance_exists(obj_mentor)) instance_destroy(obj_mentor);
    
    // Destroy the Trigger
    // You need to find the Instance ID of the trigger in the room editor.
    // Or, simpler: Destroy all triggers that have cutscene_id == 3
    with (obj_cutscene_trigger) {
        if (cutscene_id == 3) {
            instance_destroy();
        }
    }
}