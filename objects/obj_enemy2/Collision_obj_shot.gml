if (other.parried = true && alarm[1] < 0) {
    
    instance_create_layer(x, y, "Effects", obj_enemy_hit_effect) {
    other.image_angle = irandom(360);
}
    
    audio_play_sound(snd_enemy_hit, 3, false);
    audio_sound_pitch(snd_enemy_hit, random_range(0.9, 1.15));
    shot_exist = false;
    hp -= other.damage;
	alarm[0] = 60;
	image_blend = c_red;
    alarm [1] = 20;
	
	if (hp <= 0)
	{
		instance_destroy();
	}
}