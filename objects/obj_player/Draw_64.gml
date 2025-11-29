draw_set_color(c_white);
draw_set_alpha(1);

// Only draw if there is something visible to save performance
if (hud_alpha > 0) {

    var _dx = 16;
    var _dy = 16;
    var _barw = 256;
    var _barh = 32;

    // Properties
    draw_set_font(Font1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Apply the fade to the text
    draw_set_alpha(hud_alpha); 

    // Healthbar calculation
    var _health_barw = _barw * (hp / hp_total);

    // 1. Background Box (Changed to _ext to use hud_alpha)
    draw_sprite_stretched_ext(spr_box, 0, _dx, _dy, _barw, _barh, c_white, hud_alpha);

    // 2. Health Bar (Multiply existing 0.6 alpha by hud_alpha)
    draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_blue, 0.6 * hud_alpha);

    // 3. Text
    draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");

    // XP
    var _xp_barw = _barw * (xp / xp_require);
    _dy += _barh + 8;

    draw_set_font(global.font_main);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    // Reset alpha back to 1 so we don't affect other objects drawing later
    draw_set_alpha(1);
}