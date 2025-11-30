/// @description Stop Music, Freeze Game & Init

// 1. FORCE PERSISTENCE
// This tells GameMaker: "Do not destroy me when the room restarts."
persistent = true;

// 2. FORCE DEPTH
// Ensure it draws on top of the new room
depth = -16000;

// 1. Silence audio
audio_stop_all(); 
audio_play_sound(snd_death, 100, false);

// 2. FREEZE ENEMIES
// This stops them from moving, shooting, or playing sounds while screen is black.
// If you have a parent object (e.g., obj_enemy_parent), use that.
// Otherwise, list your enemies:
instance_deactivate_object(obj_enemy3);
// instance_deactivate_object(obj_enemy1); // Add others if needed

// 3. Visual Variables
alpha = 1; 
state = "WAIT"; 
timer = 60;