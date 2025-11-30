switch (state) {
    
    // --- CASE 0: SETUP & FORCE MENTOR ---
    case 0:
        // 1. FORCE MENTOR LOCATION & VISIBILITY
        // Check if mentor exists, if not, create him
        if (!instance_exists(obj_mentor)) {
            instance_create_depth(300, 130, obj_player.depth, obj_mentor);
        }
        
        // Grab the instance and override his variables
        var _mentor = instance_nearest(300, 130, obj_mentor);
        if (_mentor != noone) {
            _mentor.x = 300;
            _mentor.y = 130;
            _mentor.visible = true;
            _mentor.sprite_index = spr_mentor_up;
            _mentor.image_speed = 0;
            _mentor.depth = obj_player.depth; // Ensure he is on same layer as player
            
            // --- NEW: SCALE INCREASE ---
            _mentor.image_xscale = 1.5;
            _mentor.image_yscale = 1.5;
            // ---------------------------
            
            // Disable his AI if he has any
            _mentor.speed = 0;
            if (variable_instance_exists(_mentor, "state")) _mentor.state = "WAIT";
        }

        // 2. SETUP PLAYER
        obj_player.visible = true;
        obj_player.sprite_index = spr_player_walk_up;
        obj_player.image_speed = 1;
        
        // Move to next state
        state = 1;
        break;

    // --- CASE 1: WALK PLAYER UP ---
    case 1:
        // Move Player Up
        if (obj_player.y > target_y) {
            obj_player.y -= walk_spd;
            obj_player.sprite_index = spr_player_walk_up;
            obj_player.image_speed = 1;
        } 
        else {
            // Arrived
            obj_player.y = target_y;
            obj_player.sprite_index = spr_player_idle_up;
            obj_player.image_speed = 1; // Idle animation
            
            // Small pause before talking
            timer = 30; 
            state = 2;
        }
        break;

    // --- CASE 2: SMALL PAUSE ---
    case 2:
        timer--;
        if (timer <= 0) {
            state = 3;
        }
        break;

    // --- CASE 3: START DIALOGUE ---
    case 3:
        create_textbox("at_last"); 
        state = 4;
        break;

    // --- CASE 4: WAIT FOR TEXT TO FINISH ---
    case 4:
        if (!instance_exists(obj_textbox)) {
            state = 5;
        }
        break;

    // --- CASE 5: FADE TO BLACK ---
    case 5:
        fade_alpha += 0.01; // Slow fade
        
        // Fade out audio if you want
        // audio_set_master_gain(0, 1 - fade_alpha);

        if (fade_alpha >= 1) {
            fade_alpha = 1;
            
            // Start Video
            video_open("outro.mp4");
            video_enable_loop(false);
            video_active = true;
            
            state = 6;
        }
        break;

    // --- CASE 6: WATCH VIDEO & CLEANUP ---
    case 6:
        var _pos = video_get_position();
        var _dur = video_get_duration();
        
        // Trigger: Video Ends OR Spacebar pressed
        if (_pos >= _dur - 100 || keyboard_check_pressed(vk_space)) {
            
            // 1. Close Video
            video_close();
            video_active = false;
            
            // 2. CLEANUP OBJECTS
            if (instance_exists(obj_player)) instance_destroy(obj_player);
            if (instance_exists(obj_mentor)) instance_destroy(obj_mentor);
            if (instance_exists(obj_textbox)) instance_destroy(obj_textbox);
            
            // --- NEW: RESET CURSOR ---
            // A. Destroy the custom cursor object so it stops drawing the sprite
            if (instance_exists(obj_cursor)) {
                instance_destroy(obj_cursor);
            }
            
            // B. Restore the standard system cursor (White Arrow)
            window_set_cursor(cr_default);
            // -------------------------

            // 3. RESTART MUSIC
            audio_stop_all(); 
            audio_play_sound(snd_menu_music, 100, true); 
            
            // 4. GO TO MENU
            room_goto(Room_menu);
        }
        break;
}