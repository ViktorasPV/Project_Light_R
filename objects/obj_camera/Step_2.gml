// obj_camera End Step Event (New Event)

if (global.game_state == GAME_STATE.NORMAL) {
    
    // Calculate and apply shake offset to the camera position
    if (shake_value > 0) {
        
        var _x_offset = lengthdir_x(shake_value, random(360));
        var _y_offset = lengthdir_y(shake_value, random(360));
        
        var cam_x = camera_get_view_x(camera);
        var cam_y = camera_get_view_y(camera);
        
        // Modify the view position based on the shake offset
        camera_set_view_pos(camera, cam_x + _x_offset, cam_y + _y_offset);
        
        // Decay the shake
        shake_value = max(0, shake_value - shake_decay);
    }
}
// Note: When global.game_state is CUTSCENE, this code is skipped,
// allowing the obj_cutscene_director to fully control the camera position.