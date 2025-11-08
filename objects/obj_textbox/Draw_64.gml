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

// ---------------------------Setup-------------------------------
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

// ----------------------------Typing text-----------------------------------
if draw_char < text_length[page] {
    draw_char += text_spd;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

// --------------------------Flip through pages--------------------------------
if accept_key {
    if draw_char == text_length[page] {
        if page < page_number - 1 {
            page++;
            draw_char = 0;
        }
        
         else {
            //link text for options
            if option_number > 0 {
                create_textbox(option_link_id[option_pos]);
            }
            instance_destroy();
        }
    }
     else {
        draw_char = text_length[page];
    }
}


// --------------------------Draw the textbox---------------------------------------
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;

txtb_img += txtb_img_spd;
var txtb_spr_w = sprite_get_width(txtb_spr);
var txtb_spr_h = sprite_get_height(txtb_spr);

// Background (note: using GUI coords directly)
draw_sprite_ext(
    txtb_spr_1,
    txtb_img,
    _txtb_x,
    _txtb_y,
    textbox_width / txtb_spr_w,
    textbox_height / txtb_spr_h,
    0, c_white, 1
);

//-------------------------options----------------------------


if (draw_char == text_length[page] && page == page_number - 1)
{
    
    //option selection
    option_pos += mouse_wheel_down() - mouse_wheel_up();
    option_pos = clamp(option_pos, 0, option_number-1);
    
    var _op_space = 15;
    var _op_bord = 4;
    for (var op = 0; op < option_number; op++)
    {
        
        //the option box
        var _o_w = string_width(option[op]) + _op_bord * 2;
        draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space-3)/txtb_spr_h, 0, c_white, 1);
        
        //the arrow
        if option_pos == op
        {
            draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op)   
        }
        
        //the option text
        draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 2, option[op]);
    }
}

// Draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(
    _txtb_x + border,
    _txtb_y + border,
    _drawtext,
    line_sep,
    line_width
);

display_set_gui_size(prev_gui_w, prev_gui_h);