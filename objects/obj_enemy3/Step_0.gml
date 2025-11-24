// Movement base
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

// --- NORMAL MOVEMENT ---
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);

if (alarm[1] > 0) {
    x += kb_x;
    y += kb_y;
}

if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
	target_x = obj_player.x;
	target_y = obj_player.y;
    move_speed = 2.5;
    if (!audio_is_playing(snd_enemy3)) {
    audio_play_sound(snd_enemy3, 5, false);
    }
    sprite_index = spr_enemy3_a;
    running = true;
}