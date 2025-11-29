// obj_cutscene_trigger Collision with Player
if (!cutscene_started) {
    global.game_state = GAME_STATE.CUTSCENE;

    // Stop player
    with (other) {
        hsp = 0;
        vsp = 0;
    }

    // CREATE THE DIRECTOR AND PASS VARIABLES
    instance_create_layer(x, y, "Instances", obj_cutscene_director, {
        cutscene_id : cutscene_id,
        text_id : text_id,          // <--- MAKE SURE THIS LINE IS HERE!
        target_room : target_room   // (If you use this for other cutscenes)
    });

    cutscene_started = true;
}