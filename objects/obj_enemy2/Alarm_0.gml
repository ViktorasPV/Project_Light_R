if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player && shot_exist == false)
{
        
        audio_play_sound(snd_shot_creation, 5, false);
        audio_sound_pitch(snd_shot_creation, random_range(0.9, 1.15));
        sprite_index = spr_enemy2_a;
        shot_exist = true;
        
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 240;