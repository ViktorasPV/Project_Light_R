draw_set_alpha(alpha);
draw_set_color(c_black);

// Draw a rectangle over the entire GUI
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// Reset
draw_set_alpha(1);
draw_set_color(c_white);