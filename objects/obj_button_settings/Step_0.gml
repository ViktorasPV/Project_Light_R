// 1. Get Mouse Position relative to the GUI (Screen), not the Room
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// 2. Check if mouse is hovering over this button sprite
// We use 'bbox' variables, which usually work fine if the object is at the right X/Y
// But to be safe, we calculate it manually based on sprite width/height
var _half_w = sprite_get_width(sprite_index) / 2;
var _half_h = sprite_get_height(sprite_index) / 2;

var _hovering = point_in_rectangle(_mx, _my, x - _half_w, y - _half_h, x + _half_w, y + _half_h);

// 3. Optional: Visual Hover Effect (Example)
if (_hovering) {
    image_blend = c_ltgray; // Make it slightly darker when hovering
} else {
    image_blend = c_white;
}

// 4. Check for Click
if (_hovering && mouse_check_button_pressed(mb_left)) {
    
    // Toggle the slider
if (instance_exists(obj_slider)) {
    instance_destroy(obj_slider);
} else {
    // Create slider to the RIGHT of this button
    // e.g., 250 pixels to the right
    instance_create_depth(x + 500, y, -10001, obj_slider);
}

}