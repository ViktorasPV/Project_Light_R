var prev_gui_w = display_get_gui_width();
var prev_gui_h = display_get_gui_height();

// Switch to camera-based GUI size (pixel-perfect textbox)
var cam = view_camera[0];
display_set_gui_size(camera_get_view_width(cam), camera_get_view_height(cam));

// input
accept_key = keyboard_check_pressed(vk_space);

// Use GUI coordinates directly — top-left of the camera viewport is (0,0)
textbox_x = 16;         // left padding inside the view
textbox_y = 165;        // down from top of view (was cam_y + 144 in world-space)

// Setup (only once)
if setup == false {
    setup = true;
    draw_set_font(global.font_main);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

    for (var p = 0; p < page_number; p++) {
        text_length[p] = string_length(text[p]);
        text_x_offset[p] = 65;
    }
}

// Typing logic
if draw_char < text_length[page] {
    draw_char += text_spd;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

// Page flip / destroy
if accept_key {
    if draw_char == text_length[page] {
        if page < page_number - 1 {
            page++;
            draw_char = 0;
        } else {
            instance_destroy();
        }
    } else {
        draw_char = text_length[page];
    }
}

// Draw visuals
txtb_img += txtb_img_spd;
var txtb_spr_w = sprite_get_width(txtb_spr);
var txtb_spr_h = sprite_get_height(txtb_spr);

// Background (note: using GUI coords directly)
draw_sprite_ext(
    txtb_spr,
    txtb_img,
    textbox_x + text_x_offset[page],
    textbox_y,
    textbox_width / txtb_spr_w,
    textbox_height / txtb_spr_h,
    0, c_white, 1
);

// Draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(
    textbox_x + text_x_offset[page] + border,
    textbox_y + border,
    _drawtext,
    line_sep,
    line_width
);

display_set_gui_size(prev_gui_w, prev_gui_h);