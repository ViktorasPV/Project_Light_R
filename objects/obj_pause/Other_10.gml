/// @description Toggle Pause Logic

if (!pause) {
    // --- PAUSE GAME ---
    pause = true;
    instance_deactivate_all(true);
    
    instance_activate_object(obj_cursor);
    
    // Capture surface
    pauseSurf = surface_create(resW, resH);
    surface_set_target(pauseSurf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    
    if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
    pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
    buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);

    // Create Buttons
    instance_create_depth(menu_x, menu_y, -10000, obj_button_resume);
    instance_create_depth(menu_x, menu_y + button_spacing, -10000, obj_button_settings);
    instance_create_depth(menu_x, menu_y + (button_spacing * 2), -10000, obj_button_quit_1);
} 
else {
    // --- UNPAUSE GAME ---
    pause = false;
    
    // Destroy UI
    instance_destroy(obj_button_resume);
    instance_destroy(obj_button_settings);
    instance_destroy(obj_button_quit_1);
    instance_destroy(obj_slider); 
    
    // Cleanup
    if (surface_exists(pauseSurf)) surface_free(pauseSurf);
    if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
    
    instance_activate_all();
}