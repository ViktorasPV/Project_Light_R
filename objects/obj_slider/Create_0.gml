value = audio_get_master_gain(0); // Current volume (0 to 1)
is_dragging = false;

// Sprite info
sprite_index = spr_slider_bar;
image_speed = 0;
bar_width = sprite_get_width(sprite_index);