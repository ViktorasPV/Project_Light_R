draw_self();

draw_set_font(Font_menu);

// --- THE FIX ---
// Force the color to White before drawing text
draw_set_color(c_white); 
// ----------------

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Optional: Good practice to reset color to white at the end of draw events 
// so you don't accidentally color other objects.
// draw_set_color(c_white);
