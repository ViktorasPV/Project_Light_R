if (surface_exists(light_surface)) {
    var cx = round(camera_get_view_x(view_camera[0])-2);
    var cy = round(camera_get_view_y(view_camera[0])-2);
    
    surface_set_target(light_surface)
    draw_clear_alpha(c_black, 0.9);
    gpu_set_blendmode(bm_add);
    
    draw_circle_color(mouse_x-cx, mouse_y-cy, 48, c_aqua, c_black, 0);
    
    if instance_exists(obj_player) {
        with(obj_player) {
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
    
    
    surface_reset_target();
    
    gpu_set_blendmode_ext(bm_zero, bm_subtract);
    
    draw_surface(light_surface, cx, cy)
    
    gpu_set_blendmode(bm_normal);
}    else {
        light_surface = surface_create(camera_get_view_width(view_camera[0]),
        camera_get_view_height(view_camera[0])+4);
    };
