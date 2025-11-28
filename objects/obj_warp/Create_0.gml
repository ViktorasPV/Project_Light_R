targetRoom = 0;
targetX = 0;
targetY = 0;

// Calculate how long the fade should last based on sprite animation speed.
// (number of frames / speed) / 60_fps * 1000_ms
// Or just set a hard number like 500ms or 1000ms.
var fade_time = 500; 

// Fade ALL sound to volume 0 over 500 milliseconds
audio_group_set_gain(audiogroup_default, 0, fade_time);