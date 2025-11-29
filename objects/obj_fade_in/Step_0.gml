alpha -= fade_spd;
if (alpha <= 0) {
    instance_destroy();
}