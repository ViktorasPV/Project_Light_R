if (sprite_index == spr_enemy2_a) {
    var shot = instance_create_depth(x, y - 2, depth, obj_shot);
        shot.creator = id; // Store reference to the enemy that fired the shot
    sprite_index = spr_enemy2_na;
}