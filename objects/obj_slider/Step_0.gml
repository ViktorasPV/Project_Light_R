if (mouse_check_button_pressed(mb_left)) {
    // We use GUI mouse coordinates because the menu is on the GUI layer
    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);
    
    // Check if mouse is near the slider (simple box collision)
    if (point_in_rectangle(_mx, _my, bbox_left - 10, bbox_top - 10, bbox_right + 10, bbox_bottom + 10)) {
        is_dragging = true;
    }
}

if (mouse_check_button_released(mb_left)) {
    is_dragging = false;
}

if (is_dragging) {
    var _mx = device_mouse_x_to_gui(0);
    
    // 1. Math to clamp the slider handle inside the bar
    var _x_start = x - (bar_width / 2);
    var _x_end = x + (bar_width / 2);
    var _clamped_x = clamp(_mx, _x_start, _x_end);
    
    // 2. Calculate percentage (0.0 to 1.0)
    value = (_clamped_x - _x_start) / bar_width;
    
    // 3. Apply Volume
    audio_master_gain(value);
}