// obj_textbox Create Event (Top of the file)

// Check if there are other textboxes already existing
if (instance_number(obj_textbox) > 1) {
    var _my_id = id; // Store the ID of this NEW textbox
    
    // Loop through ALL textboxes
    with (obj_textbox) {
        // If this textbox is NOT the one we just created...
        if (id != _my_id) {
            instance_destroy(); // Destroy the OLD one
        }
    }
}

text_id_ref = "";

// textbox params
textbox_height = 63;
textbox_width  = 223;
border = 8;
line_sep = 14;
line_width = textbox_width - border*2;
txtb_spr[0] = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;

// the text
text_x_offset[0] = 0;
page = 0;
page_number = 0;
text[0] = ""
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 1;

//options
txtb_spr_1 = spr_textbox_option;
option[0] = ""
option_number = 0
option_link_id[0] = -1
option_pos = 0


setup = false;

//sound
snd_delay = 4;
snd_count = snd_delay;

//effects
scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 20;