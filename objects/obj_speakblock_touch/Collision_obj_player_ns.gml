if (!one_time) {
    // normal reusable
    create_textbox(text_id);
}
else {
    // one-time
    if (!passed) {
        create_textbox(text_id);
        passed = true;
    }
}