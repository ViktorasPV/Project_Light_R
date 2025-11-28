if (fade_alpha > 0) {
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    draw_set_color(c_white);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, _gui_w, _gui_h, false);
    draw_set_alpha(1); // Reset alpha
}