if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
	target_x = obj_player.x;
	target_y = obj_player.y;
    move_speed = 2.5;
    if (!audio_is_playing(snd_enemy3)) {
    audio_play_sound(snd_enemy3, 5, false);
}
    sprite_index = spr_enemy3_a;
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;