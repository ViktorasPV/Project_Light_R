/// obj_enemy_parent → Collision with obj_parry


    
    instance_create_layer(x, y, "Effects", obj_enemy_hit_effect) {
    other.image_angle = irandom(360);
}
    
    with (obj_camera) {
    shake_value = 1; // normal parry
}
    
    audio_stop_sound(snd_enemy3);
    audio_play_sound(snd_enemy_hit, 5, false);
    audio_play_sound(snd_parry, 5, false);
    
    hp -= other.damage;
    kb_x = sign(x - other.x);
	kb_y = sign(y - other.y);

    // Brief stun so KB actually happens
    alarm[1] = 12;

    // Optional: flash enemy to show it was parried
    image_blend = c_red;
