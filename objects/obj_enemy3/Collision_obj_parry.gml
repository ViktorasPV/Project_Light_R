instance_create_layer(x, y, "Effects", obj_enemy_hit_effect, {
    image_angle : irandom(360)
});
    
with (obj_camera) {
    shake_value = 1; 
}
    
// Stop the scream
audio_stop_sound(snd_enemy3);
// Play impact sounds
audio_play_sound(snd_enemy_hit, 5, false);
audio_play_sound(snd_parry, 5, false);
    
hp -= other.damage;
kb_x = sign(x - other.x);
kb_y = sign(y - other.y);

// Brief stun/death delay
alarm[1] = 12;

image_blend = c_red;