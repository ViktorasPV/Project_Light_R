move_speed = 1;

can_move = true;

hp = 20;
hp_total = hp;
damage = 1;

can_attack = true;

facing = 0;

tilemap = layer_tilemap_get_id("Tiles_Col");

kb_x = 0;
kb_y = 0;
kb_timer = 0;

hud_alpha = 1;

/// Step Event of obj_player (knockback section)
var steps = ceil(max(abs(kb_x), abs(kb_y))); // split movement into smaller steps
var step_x = kb_x / steps;
var step_y = kb_y / steps;

repeat (steps) {
    // Horizontal knockback
    if (!tilemap_get_at_pixel(tilemap, x + step_x, y)) {
        x += step_x;
    } else {
        kb_x = 0; // stop horizontal knockback if blocked
    }

    // Vertical knockback
    if (!tilemap_get_at_pixel(tilemap, x, y + step_y)) {
        y += step_y;
    } else {
        kb_y = 0; // stop vertical knockback if blocked
    }
}

// Apply friction to slow knockback over time
kb_x *= 0.8;
kb_y *= 0.8;

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 5;
		hp = hp_total;
		damage += 0.8;
	}
}

has_exclaimed_on_hit = false;

