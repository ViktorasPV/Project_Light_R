if (!variable_global_exists("tutorial_shown")) {
    global.tutorial_shown = false;
}

if (global.tutorial_shown == false) {
    instance_create_layer(0, 0, "Instances", obj_sword_controls);
    global.tutorial_shown = true;
}