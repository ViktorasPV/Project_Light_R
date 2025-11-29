show_debug_message("ENTERED HOUSE1. Choice is: " + string(global.mentor_choice));

if (global.mentor_choice == 1 && global.house_event_done == false) {
    
    // 1. Remove duplicates
    if (instance_exists(obj_mentor)) instance_destroy(obj_mentor);

    // 2. SPAWN AND SCALE MENTOR
    var _men = instance_create_layer(239, 127, "Instances", obj_mentor);
    _men.image_xscale = 1.5;
    _men.image_yscale = 1.5;
    
    // 3. Force Player Position
    if (instance_exists(obj_player)) {
        obj_player.x = 128;
        obj_player.y = 127;
        obj_player.sprite_index = spr_player_idle_right;
    }
    
    // 4. Trigger Cutscene
    global.game_state = GAME_STATE.CUTSCENE; 
    instance_create_layer(0, 0, "Instances", obj_cutscene_director, {
        cutscene_id : 5
    });
} 
else {
    // Clear room if not needed
    if (instance_exists(obj_mentor)) {
        instance_destroy(obj_mentor);
    }
}