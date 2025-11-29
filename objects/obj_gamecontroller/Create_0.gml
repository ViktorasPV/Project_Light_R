paused = false;
normal_fps = 60; // your ROOM SPEED here (60 is standard)

global.cutscene = false;

// 0 = Undecided, 1 = Yes, 2 = No
if (!variable_global_exists("mentor_choice")) {
    global.mentor_choice = 0; 
}

// Track if the House1 scene is finished
if (!variable_global_exists("house_event_done")) {
    global.house_event_done = false; 
}

var charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZĄČĘĖĮŠŲŪŽabcdefghijklmnopqrstuvwxyząčęėįšųūž0123456789!?.,:;-' "
global.font_main = font_add_sprite_ext(spr_main_font, charset, true, 1);

if (!variable_global_exists("mentor_event_done")) {
    global.mentor_event_done = false;
}

var target_w = 1280;
var target_h = 720;

// fix window + application surface size at startup
window_set_size(target_w, target_h);
surface_resize(application_surface, target_w, target_h);
display_set_gui_size(target_w, target_h);