if (!parried && instance_exists(obj_player)) {
    target_x = obj_player.x;
    target_y = obj_player.y;
}
else if (parried && instance_exists(creator)) {
    target_x = creator.x;
    target_y = creator.y;
}

// Smooth homing movement
var _dx = target_x - x;
var _dy = target_y - y;
var _dist = point_distance(x, y, target_x, target_y);

if (_dist != 0) {
    var _dir_x = _dx / _dist;
    var _dir_y = _dy / _dist;
    x += _dir_x * move_speed;
    y += _dir_y * move_speed;
}