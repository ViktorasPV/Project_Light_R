// obj_cutscene_director Create Event
state = 0;
timer = 0;

// Default variable initialization (ensure these exist)
if (!variable_instance_exists(id, "cutscene_id")) cutscene_id = 1;
if (!variable_instance_exists(id, "text_id")) text_id = "first_enemy"; 

cam = view_camera[0];
if instance_exists(obj_player_ns) {
default_target = obj_player_ns; 
}
else {
    default_target = obj_player; 
}    
target_enemy = noone; // Initialize this!


if instance_exists(obj_player_ns) {
player_start_x = obj_player_ns.x;
}
else {
player_start_x = obj_player.x;
}   

fade_alpha = 0; // 0 = Transparent, 1 = White
target_room = Room_sword; // Default, will be overwritten by trigger

// Add this to existing variables
fade_color = c_black; // Default to black
