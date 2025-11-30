// 1. Draw the Track and Knob (Keep your existing code)
draw_self();
var _knob_x = x - (bar_width/2) + (value * bar_width);
draw_sprite(spr_slider_handle, 0, _knob_x, y);

// 2. DRAW THE TEXT "Garsas"
draw_set_font(Font_menu);
draw_set_halign(fa_left); // Align text to start from the left
draw_set_valign(fa_middle); // Align text to center vertically

// Calculate position: Right side of bar + 20 pixels padding
var _text_x = x + (bar_width / 2) + 20;

draw_text(_text_x, y, "Garsas");

// Optional: Reset alignment to default to avoid affecting other draw events
draw_set_halign(fa_left);
draw_set_valign(fa_top);