if(collision_circle(x, y, radius, obj_player, false, true)) {
    popup_id.visible = true;
} else {
    popup_id.visible = false;
}

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < 50 && keyboard_check_pressed(ord("E")))
{	
	if (!one_time) {
    // normal reusable
    create_textbox(text_id);
}
else {
    // one-time
    if (!passed) {
        create_textbox(text_id);
        passed = true;
    }
}
}