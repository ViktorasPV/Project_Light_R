var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 1. Draw the Black Background (Covers the menu)
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, _gui_w, _gui_h, false);
draw_set_alpha(1);

// 2. Draw the Video (Only in State 2)
if (state == 2) {
    var _video_data = video_draw();
    var _video_status = _video_data[0];
    
    if (_video_status == 0) { // 0 means video is playing correctly
        var _surf = _video_data[1];
        
        // Draw the video surface stretched to fit the screen
        draw_surface_stretched(_surf, 0, 0, _gui_w, _gui_h);
    }
}

// Optional: Draw "Press Space to Skip" hint
if (state == 2 && alpha >= 1) {
    draw_set_font(global.font_main); // Use your font
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text_color(_gui_w - 20, _gui_h - 20, "[SPACE] SKIP", c_white, c_white, c_white, c_white, 0.5);
}