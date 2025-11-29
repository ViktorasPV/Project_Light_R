text_id = "";
one_time = false; // Default is reusable
active = true;    // Ready to be triggered

passed = false;
one_time = false;

popup_id = instance_create_layer(x, y - 28, layer, obj_popup_E);
radius = 32;

popup_id.visible = false