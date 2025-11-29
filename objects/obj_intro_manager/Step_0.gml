switch (state) {
    // --- PHASE 0: FADE OUT MENU & STOP MUSIC ---
    case 0:
        alpha += 0.02; // Fade speed
        
        // Lower volume of menu music if playing
        // (Assuming you use audio groups, otherwise use audio_sound_gain on specific ID)
        audio_group_set_gain(audiogroup_default, 0, 500); 

        if (alpha >= 1) {
            alpha = 1;
            audio_stop_all(); // Stop menu music completely
            state = 1;
        }
        break;

    // --- PHASE 1: START VIDEO ---
    case 1:
        video_open(video_name);
        video_enable_loop(false); // Don't loop the cutscene
        state = 2;
        break;

    // --- PHASE 2: WATCH VIDEO ---
    case 2:
        // Get status
        var _status = video_get_status();
        
        // Check if video is finished OR user skipped (Spacebar)
        if (_status == video_status_closed || keyboard_check_pressed(vk_space)) {
            video_close();
            state = 3;
        }
        break;

    // --- PHASE 3: CHANGE ROOM ---
    case 3:
        room_goto(target_room);
        // Note: The new room needs its own "Fade In" logic, 
        // or we can create a persistent fader here.
        break;
}