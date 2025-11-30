if (instance_exists(obj_controls))
{
    instance_destroy(obj_controls);
}
if (instance_exists(obj_credits))
{
    instance_destroy(obj_credits);
}

else {
    instance_create_layer(room_width / 2, room_height - 200, "Instances_2", obj_credits);
}

