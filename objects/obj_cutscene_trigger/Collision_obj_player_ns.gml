/// @description Start Cutscene
if (variable_instance_exists(id, "cutscene_started") && !cutscene_started) {
    
    global.game_state = GAME_STATE.CUTSCENE;

    // Stop player movement
    with (other) {
        hsp = 0;
        vsp = 0;
        // sprite_index = spr_player_idle; // Optional
    }

    // Create the Director and pass the text_id string
    instance_create_layer(x, y, "Instances", obj_cutscene_director, {
        cutscene_id : cutscene_id,
        text_id : text_id 
    });

    cutscene_started = true;
}