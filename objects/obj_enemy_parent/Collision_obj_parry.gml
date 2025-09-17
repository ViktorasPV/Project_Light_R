/// obj_enemy_parent → Collision with obj_parry

var was_dashing = (dash_timer > 0);

if (was_dashing) {
    
    instance_create_layer(x, y, "Effects", obj_enemy_hit_effect) {
    other.image_angle = irandom(360);
}
    
    with (obj_camera) {
    shake_value = 1; // normal parry
}
    
    audio_play_sound(snd_enemy_hit, 5, false);
    audio_play_sound(snd_parry, 5, false);
    
    
    hp -= other.damage;
    var kb_strength = 5;
    kb_x = lengthdir_x(kb_strength, dash_dir + 180);
    kb_y = lengthdir_y(kb_strength, dash_dir + 180);

    // Cancel dash and windup
    dash_timer = 0;
    windup_timer = 0;

    // Longer cooldown when parried
    cooldown_timer = max(cooldown_timer, 90);

    // Brief stun so KB actually happens
    alarm[1] = 12;

    // Optional: flash enemy to show it was parried
    image_blend = c_red;
} 
else {
    // Not dashing → parry does nothing or just a light stun
    // alarm[1] = 6; // uncomment if you want a mini-stagger
}