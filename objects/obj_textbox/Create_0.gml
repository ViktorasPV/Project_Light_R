// textbox params (move here if not already in Create)
textbox_height = 63;
textbox_width  = 223;
border = 8;
line_sep = 14;
line_width = textbox_width - border*2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;

// typing / pages
page = 0;
page_number = 0;
text[0] = ""
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

//options
txtb_spr_1 = spr_textbox_1;
option[0] = ""
option_number = 0
option_link_id[0] = -1
option_pos = 0


setup = false;