switch (state) {
    // Phase 0: Fade In
    case 0:
        alpha = lerp(alpha, 1, fade_speed);
        if (alpha > 0.95) {
            alpha = 1;
            state = 1;
        }
        break;

    // Phase 1: Hold
    case 1:
        timer--;
        if (timer <= 0) {
            state = 2;
        }
        break;

    // Phase 2: Fade Out
    case 2:
        alpha = lerp(alpha, 0, fade_speed);
        if (alpha < 0.05) {
            instance_destroy();
        }
        break;
}