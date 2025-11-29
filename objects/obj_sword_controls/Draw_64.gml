var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Text Settings
draw_set_font(global.font_main); // Use your game's font
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(alpha * 0.7); // 0.7 makes it slightly transparent max

// Colors (White text with black outline for readability)
var _c = c_white;
var _cb = c_black;
var _x = _gui_w / 2;
var _y = _gui_h - 30; // 30 pixels from the bottom
var _sep = 20; // Separation between lines

// Draw Line 2 (Bottom)
draw_text_color(_x + 1, _y + 1, text_line_2, _cb, _cb, _cb, _cb, alpha * 0.7); // Shadow
draw_text_color(_x, _y, text_line_2, _c, _c, _c, _c, alpha * 0.7);

// Draw Line 1 (Above Line 2)
draw_text_color(_x + 1, _y - _sep + 1, text_line_1, _cb, _cb, _cb, _cb, alpha * 0.7); // Shadow
draw_text_color(_x, _y - _sep, text_line_1, _c, _c, _c, _c, alpha * 0.7);

// Reset
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);