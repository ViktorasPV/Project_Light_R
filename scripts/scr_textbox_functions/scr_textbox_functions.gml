function scr_set_defaults_for_text() {
    line_break_pos[0, page_number] = 999;
    line_break_num[page_number] = 0;
    line_break_offset[page_number] = 0;
    
    txtb_spr[page_number] = spr_textbox; 
    speaker_sprite[page_number] = noone;
    speaker_side[page_number] = 1;
    snd[page_number] = snd_talking_mid;
}

//@param text
//@param [character]
///@param [side]
function scr_text(_text){
	
    scr_set_defaults_for_text();
    
	text[page_number] = _text;
    
    //get character information
    if argument_count > 1 {
        switch(argument[1])
        {
            
            case "Sword":
            txtb_spr[page_number] = spr_textbox;
                break;
            
            case "Player":
            speaker_sprite[page_number] = spr_dlg_player_idle;
            txtb_spr[page_number] = spr_textbox;
                snd[page_number] = snd_talking_high;
                break;
            case "Player_confused":
            speaker_sprite[page_number] = spr_dlg_player_confused;
            txtb_spr[page_number] = spr_textbox;
                snd[page_number] = snd_talking_high;
                break;
            case "Player_suprised":
            speaker_sprite[page_number] = spr_dlg_player_suprised;
            txtb_spr[page_number] = spr_textbox;
                break;
                
                case "Mentor":
                    speaker_sprite[page_number] = spr_dlg_mentor_idle;
                    txtb_spr[page_number] = spr_textbox_red;
                    snd[page_number] = snd_talking_low; 
                break;
        }
    }
	
    //side the character is on
    if argument_count > 2 {
        speaker_side[page_number] = argument[2];
    }
    
    
	page_number++;
	
}



// @param option
// @param link_id
function scr_option(_option, _link_id) {
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
    option_number++;
	
}

// @param text_id
function create_textbox(_text_id) {
	with (instance_create_depth(0, 0, -999, obj_textbox))
	{
		scr_game_text(_text_id);
	}
}