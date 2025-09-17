var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

// calculate shake based on value
var shake = power(shake_value, 2) * shake_power;
camX += random_range(-shake, shake);
camY += random_range(-shake, shake);

// apply shaken position
camera_set_view_pos(camera, camX, camY);

// decay shake_value over time
if (shake_value > 0) {
    shake_value -= shake_decay;
    if (shake_value < 0) shake_value = 0; // avoid negative values
}