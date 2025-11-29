// Configuration
video_name = "room_start_cutscene.mp4";
target_room = Room_start;

// State Machine
state = 0; 
// 0 = Fade Out Menu
// 1 = Play Video
// 2 = Watching Video
// 3 = Cleanup & Change Room

alpha = 0; // For the black fade
video_surface = -1;