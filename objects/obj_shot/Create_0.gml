if (!variable_instance_exists(id, "creator")) {
    creator = noone;
}

shot_exist = true;

damage = 1;

parried = false;

tilemap = layer_tilemap_get_id("Tiles_Col");

move_speed = 2;

alarm[0] = 60;

target_x = obj_player.x;
target_y = obj_player.y;

_hor = lengthdir_x(1, direction);
_ver = lengthdir_y(1, direction);