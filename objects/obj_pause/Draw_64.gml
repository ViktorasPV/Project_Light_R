if (pause) {
    draw_set_alpha(0.6); // 60% Dark
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    
    // Reset
    draw_set_alpha(1);
    draw_set_color(c_white);
    
    // Optional: Draw Menu Title
    draw_set_font(Font_menu);
    draw_set_halign(fa_left);
    draw_text(menu_x - 85, menu_y - 175, "PAUZE");
}