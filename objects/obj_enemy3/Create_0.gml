target_x = x;
target_y = y;

alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");

// Knockback
kb_x = 0;
kb_y = 0;

my_layer = id.layer; 
if (my_layer == -1) my_layer = "Instances"; 
    
running = false;

// NEW VARIABLE
has_screamed = false; // Ensures sound plays only once