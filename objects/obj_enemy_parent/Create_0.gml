target_x = x;
target_y = y;

dash_target_x = x;
dash_target_y = y;

alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");

// Knockback
kb_x = 0;
kb_y = 0;

dash_range = 40;       // Distance to trigger dash
dash_speed = 3;        // Dash movement speed
dash_windup = 20;      // Frames before dash happens
dash_timer = 0;        // Counts down dash duration
windup_timer = 0;      // Counts down wind-up
can_dash = true;       // Prevents spam
cooldown_time = 60;    // Frames before next dash
cooldown_timer = 0; 
dash_dir = 0;   // Counts down cooldown

my_layer = id.layer;        // actual instance layer
if (my_layer == -1) my_layer = "Instances";  // fallback name
    