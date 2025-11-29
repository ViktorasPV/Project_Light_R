// Configuration
text_line_1 = "ATAKUOTI - KAIRINIS PELĖS KLAVIŠAS"; // Replace with your controls
text_line_2 = "ATMUŠTI - DEŠINYSIS PELĖS KLAVIŠAS";   // Replace with your controls

display_time = 240; // 4 seconds (60 fps * 4)
fade_speed = 0.05;

// Internal variables
alpha = 0;
state = 0; // 0 = Fade In, 1 = Display, 2 = Fade Out
timer = display_time;