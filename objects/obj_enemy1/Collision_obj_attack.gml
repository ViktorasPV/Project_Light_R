if (alarm[1] < 0)
{
    instance_create_layer(x, y, "Effects", obj_enemy_hit_effect) {
    other.image_angle = irandom(360);
}
    audio_play_sound(snd_enemy_hit, 5, false);
    audio_sound_pitch(snd_enemy_hit, random_range(0.9, 1.15));
	hp -= other.damage;
	image_blend = c_red;
	
	kb_x = sign(x - other.x);
	kb_y = sign(y - other.y);
	alarm [1] = 20;
}