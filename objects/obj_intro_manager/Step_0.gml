switch (state) {
    // --- PHASE 0: FADE OUT MENU & STOP MUSIC ---
    case 0:
        alpha += 0.02; 
        
        // We fade out the volume...
        audio_group_set_gain(audiogroup_default, 0, 500); 

        if (alpha >= 1) {
            alpha = 1;
            
            // 1. Stop the music completely
            audio_stop_all(); 
            
            // 2. IMPORTANT: Reset the Volume back to 1 (100%)
            // If we don't do this, the video will play at 0 volume!
            audio_group_set_gain(audiogroup_default, 1, 0); 
            
            state = 1;
        }
        break;

    // --- PHASE 1: START VIDEO ---
    case 1:
        // Now that volume is back to 1, open the video
        video_open(video_name);
        video_enable_loop(false); 
        state = 2;
        break;
    
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