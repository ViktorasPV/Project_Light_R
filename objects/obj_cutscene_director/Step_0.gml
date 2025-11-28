show_debug_message("Director Step running. State: " + string(state));

/// @description Cutscene Logic State Machine

var cam = view_camera[0];
var cur_x = camera_get_view_x(cam);
var cur_y = camera_get_view_y(cam);

switch (cutscene_id) {
    
    // ---------------------------------------------------------
    // CUTSCENE TYPE 1: Pan Right, Enemy Action, Smooth Return
    // ---------------------------------------------------------
    case 1: 
        switch (state) {
            
            // --- PHASE 0: SETUP (Detach Camera, Find Enemy) ---
            case 0:
                // Stop built-in following
                camera_set_view_target(cam, noone);
                
                // Define start_x and start_y right before calculation
                // Note: We use 'var' to define them as local, or you can use
                // 'start_x = cur_x;' to make them instance variables.
                
                // Define them as instance variables so they are accessible by target_x/target_y:
                start_x = cur_x;
                start_y = cur_y; // <--- FIX: start_y is now explicitly defined.
                
                // Set targets for pan right
                target_x = start_x + 200; 
                target_y = start_y;
                
                // Find the closest enemy to act
                target_enemy = instance_nearest(start_x, start_y, obj_enemy1);
                
                state = 1;
                break;
                
            // --- PHASE 1: MOVE CAMERA RIGHT ---
            case 1:
                // Smooth move (Lerp) towards the right target
                cur_x = lerp(cur_x, target_x, 0.05);
                cur_y = lerp(cur_y, target_y, 0.05);
                
                camera_set_view_pos(cam, cur_x, cur_y);
                
                // Exit condition (2-pixel tolerance)
                if (abs(target_x - cur_x) < 2) {
                    camera_set_view_pos(cam, target_x, target_y);
                    state = 2; // Start first textbox
                }
                break;
                
            // --- PHASE 2: SPAWN FIRST TEXTBOX ("first_enemy") ---
            case 2:
                create_textbox(text_id); 
                state = 3;
                break;
                
            // --- PHASE 3: WAIT FOR FIRST TEXTBOX TO CLOSE ---
            case 3:
                if (!instance_exists(obj_textbox)) {
                    state = 31; // Move to Enemy Action
                }
                break;
                
            // --- PHASE 31: ENEMY ACTION (Sprite + Sound) ---
            case 31:
                if (instance_exists(target_enemy)) {
                    with (target_enemy) {
                        sprite_index = spr_enemy1_dash; 
                        audio_play_sound(snd_enemy_hit, 1, false); // CHANGED TO snd_enemy_hit
                    }
                }
                timer = 5; 
                state = 33; // Delay for sound
                break;
                
            // --- PHASE 33: SOUND DELAY ---
            case 33:
                timer--;
                if (timer <= 0) {
                     state = 35; // Spawn second textbox
                }
                break;
                
            // --- PHASE 35: SPAWN SECOND TEXTBOX ("first_enemy1") ---
            case 35:
                create_textbox("first_enemy1"); 
                state = 32; // Wait for second textbox
                break;
                
            // --- PHASE 32: WAIT FOR SECOND TEXTBOX TO CLOSE ---
            case 32:
                if (!instance_exists(obj_textbox)) {
                    // Calculate target position for return (centered on player's original X)
                    var view_w_half = camera_get_view_width(cam) / 2;
                    var view_h_half = camera_get_view_height(cam) / 2;
                    
                    target_x = player_start_x - view_w_half; 
                    target_y = obj_player_ns.y - view_h_half; 
                    
                    state = 4; // Start camera return
                }
                break;

            // --- PHASE 4: CAMERA RETURNS SMOOTHLY TO PLAYER ---
            case 4:
                // Smooth move back towards the player's central position
                cur_x = lerp(cur_x, target_x, 0.05);
                cur_y = lerp(cur_y, target_y, 0.05);
                
                camera_set_view_pos(cam, cur_x, cur_y);
                
                // Exit condition (2-pixel tolerance)
                if (abs(target_x - cur_x) < 2) {
                    state = 5; 
                }
                break;
                
            // --- PHASE 5: FINAL CLEANUP ---
            case 5:
                // Re-enable built-in Object Following
                camera_set_view_target(cam, default_target);
                
                // Resume Game
                global.game_state = GAME_STATE.NORMAL;
                if (instance_exists(target_enemy)) {
                target_enemy.enemy_state = "CHASE"; 
                target_enemy.cooldown_timer = 120;
}
                
                audio_stop_all();
                audio_play_sound(snd_the_chase, 1, true);
                
                instance_destroy();
                break;
        }
        break;
    
    // ... Inside switch (cutscene_id) ...

    // ---------------------------------------------------------
    // CUTSCENE TYPE 2: Sword Pickup -> Fade White -> Room Change
    // ---------------------------------------------------------
    case 2:
        switch (state) {
            
            // --- PHASE 0: START DIALOGUE ---
            case 0:
                create_textbox("First_sword_meet");
                state = 1;
                break;
                
            // --- PHASE 1: WAIT FOR TEXT TO FINISH ---
            case 1:
                if (!instance_exists(obj_textbox)) {
                    state = 2;
                }
                break;
                
            // --- PHASE 2: FADE TO WHITE ---
            case 2:
                
                audio_play_sound(snd_fade_in, 1, false);
                // Increase alpha
                fade_alpha += 0.01; // Adjust speed (lower is slower)
                
                // When fully white...
                if (fade_alpha >= 1) {
                    fade_alpha = 1;
                    state = 3;
                }
                
                break;
                
            // --- PHASE 3: CHANGE ROOM & SWAP PLAYER ---
            case 3:
                // 1. Make Director Persistent so it survives the warp
                
                audio_stop_all();
                
                persistent = true;
                
                // 2. Go to the new room
                room_goto(target_room);
                
                // 3. We need to wait one frame for the room to actually change
                // before we can manipulate objects in the new room.
                state = 4;
                break;
                
            // --- PHASE 4: SETUP NEW ROOM (SWAP PLAYER) ---
            case 4:
                // This code runs in the NEW room now.
                
                // This code runs in the NEW room now.
                
                // 1. Find the old player (if he transferred over via persistence or just logic)
                // Note: Even if obj_player_ns isn't persistent, we need coords. 
                // If he isn't there, you might need default coords.
                
                var _spawn_x = 100; // Default fallback
                var _spawn_y = 100;
                
                if (instance_exists(obj_player_ns)) {
                    _spawn_x = obj_player_ns.x;
                    _spawn_y = obj_player_ns.y;
                    instance_destroy(obj_player_ns);
                }
                
                // 2. Create the NEW "Sword" Player
                var _new_player = instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_player);
                
                // --- APPLY SCALE HERE ---
                _new_player.image_xscale = 1.5;
                _new_player.image_yscale = 1.5;
                // ------------------------
                
                // 3. Ensure Camera follows the NEW player
                var cam = view_camera[0];
                camera_set_view_target(cam, _new_player);
                
                state = 5;
                break;
                
            // --- PHASE 5: FADE IN (FROM WHITE) ---
            case 5:
                fade_alpha -= 0.01;
                
                if (fade_alpha <= 0) {
                    fade_alpha = 0;
                    state = 6;
                }
                break;
                
            // --- PHASE 6: CLEANUP ---
            case 6:
                global.game_state = GAME_STATE.NORMAL;
                
                // Stop being persistent so we don't exist forever
                persistent = false;
                instance_destroy();
                break;
        }
        break;
}