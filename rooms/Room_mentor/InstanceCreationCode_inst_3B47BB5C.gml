if (global.mentor_event_done == true) {
    show_debug_message("Variable is TRUE. Destroying Mentor.");
    instance_destroy();
    exit;
}