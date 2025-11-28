depth = -99;

if (!surface_exists(light_surface) ||
    surface_get_width(light_surface)  != camera_get_view_width(view_camera[0]) + 2 ||
    surface_get_height(light_surface) != camera_get_view_height(view_camera[0]) + 2) {
        
    if (surface_exists(light_surface)) surface_free(light_surface);
    light_surface = surface_create(
        camera_get_view_width(view_camera[0]) + 2,
        camera_get_view_height(view_camera[0]) + 2
    );
}

if (surface_exists(light_surface)) {
    var cx = floor(camera_get_view_x(view_camera[0]));
    var cy = floor(camera_get_view_y(view_camera[0]));
    
    surface_set_target(light_surface);
    draw_clear_alpha(c_black, 0.9);
    gpu_set_blendmode(bm_add);
    
    if instance_exists(obj_player_ns) {
        with(obj_player_ns) {
            draw_circle_color(x-cx, y-cy, 20, c_aqua, c_black, 0);
        }
    }
    
    if instance_exists(obj_enemy1) {
        with(obj_enemy1) {
            draw_circle_color(x-cx, y-cy, 36, c_orange, c_black, 0);
        }
    }
    
    if instance_exists(obj_enemy2) {
        with(obj_enemy2) {
            draw_circle_color(x-cx, y-cy, 36, c_orange, c_black, 0);
        }
    }
    
    if instance_exists(obj_shot) {
        with(obj_shot) {
            draw_circle_color(x-cx, y-cy, 12, c_orange, c_black, 0);
        }
    }
    
    if instance_exists(obj_shot_hit_effect) {
        with(obj_shot_hit_effect) {
            draw_circle_color(x-cx, y-cy, 24, c_orange, c_black, 0);
        }
    }
    
    if instance_exists(obj_light_flower) {
        with(obj_light_flower) {
            draw_circle_color(x-cx, y-cy, 24, col, c_black, 0);
        }
    }
    
    if instance_exists(obj_torch) {
        with(obj_torch) {
            draw_circle_color(x-cx, y-cy, 24, c_orange, c_black, 0);
        }
    }
    
    if instance_exists(obj_menu_player) {
        with(obj_menu_player) {
            draw_circle_color(x-cx, y-cy, 400, c_aqua, c_black, 0);
        }
    }
    
    if instance_exists(obj_button_help) {
        with(obj_button_help) {
            draw_circle_color(x-cx, y-cy, 200, c_aqua, c_black, 0);
        }
    }
    
    if instance_exists(obj_button_quit) {
        with(obj_button_quit) {
            draw_circle_color(x-cx, y-cy, 200, c_aqua, c_black, 0);
        }
    }
    if instance_exists(obj_mentor) {
        with(obj_mentor) {
            draw_circle_color(x-cx, y-cy, 36, c_white, c_black, 0);
        }
    }
    if instance_exists(obj_town_rock) {
        with(obj_town_rock) {
            draw_circle_color(x-cx, y-cy, 64, c_purple, c_black, 0);
        }
    }
    if instance_exists(obj_enemy3) {
        with(obj_enemy3) {
            draw_circle_color(x-cx, y-cy, 64, c_orange, c_black, 0);
        }
    }
    if instance_exists(obj_npc1) {
        with(obj_npc1) {
            draw_circle_color(x-cx, y-cy, 64, c_blue, c_black, 0);
        }
    }
    if instance_exists(obj_sword) {
        with(obj_sword) {
            draw_circle_color(x-cx, y-cy, 256, c_aqua, c_black, 0);
        }
    }
    
    
    
    surface_reset_target();
    
    gpu_set_blendmode_ext(bm_zero, bm_subtract);
    draw_surface_ext(light_surface, cx - 1, cy - 1, 1.01, 1.01, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
}