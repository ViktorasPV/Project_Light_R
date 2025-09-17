var scl = floor(display_get_height()/180)

var cam = camera_create;
camera_set_view_size(cam,
display_get_width()/scl,
display_get_height()/scl);

view_camera[0] = cam;

surface_resize(application_surface, display_get_width(), display_get_height());