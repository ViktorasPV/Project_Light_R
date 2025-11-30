var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

// 1. DRAW VIDEO
if (video_active) {
    var _data = video_draw();
    var _status = _data[0];
    
    if (_status == 0) {
        // Draw stretched to fit screen
        draw_surface_stretched(_data[1], 0, 0, _guiW, _guiH);
    }
}

// 2. DRAW FADE
// We only draw the black fade if the video is NOT playing yet, 
// OR if you want the video to fade in (optional).
// For now, let's keep the black screen until video starts.
if (state >= 5 && !video_active) {
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, _guiW, _guiH, false);
    
    // Reset defaults
    draw_set_alpha(1);
    draw_set_color(c_white);
}