// 1. Get the mouse position relative to the window/screen (not the room)
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


// 2. Draw the cursor sprite here manually
// We use 'sprite_index' and 'image_index' so it updates if you change the sprite
draw_sprite_ext(sprite_index, image_index, _mx, _my, image_xscale + 1, image_yscale + 1, image_angle, c_white, 1);