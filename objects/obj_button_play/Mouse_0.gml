// Inherit the parent event
event_inherited();

// Don't create multiple managers if player spam clicks
if (!instance_exists(obj_intro_manager)) {
    instance_create_layer(0, 0, "Instances", obj_intro_manager);
}

