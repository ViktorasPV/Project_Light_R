if (other == creator) {
    instance_destroy(); // Destroy the shot after impact
    other.shot_exist = false;
}