if (creator != noone && instance_exists(creator)) {
    
    instance_create_layer(x, y, "Effects", obj_shot_hit_effect) {
    other.image_angle = irandom(360);
}
    
    with (obj_camera) {
    shake_value = 1; // normal parry
}
    audio_play_sound(snd_parry, 5, false);
    parried = true;
    obj_player.can_parry = true;
    // Reverse direction
    direction += 180; // Turn around
    
    // Correctly set target coordinates
    target_x = creator.x;
    target_y = creator.y;
} else {
    // Fallback if creator doesn't exist
    instance_destroy(); 
}