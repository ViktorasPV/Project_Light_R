// 1. DETERMINE VISIBILITY
var _is_close = collision_circle(x, y, radius, obj_player, false, true);
var _textbox_exists = instance_exists(obj_textbox);

// The popup should ONLY be visible if:
// 1. Player is close
// 2. AND No textbox is currently open (prevents visual clutter)
// 3. AND (It's reusable OR it hasn't been used yet)
if (_is_close && !_textbox_exists && (!one_time || !passed)) {
    popup_id.visible = true;
} else {
    popup_id.visible = false;
}

// 2. INTERACTION LOGIC
var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < 50 && keyboard_check_pressed(ord("E")))
{   
    if (!one_time) {
        // Normal reusable
        create_textbox(text_id);
    }
    else {
        // One-time logic
        if (!passed) {
            create_textbox(text_id);
            passed = true;
            
            // Optional: Immediately hide the popup so it vanishes the instant you press E
            popup_id.visible = false; 
        }
    }
}