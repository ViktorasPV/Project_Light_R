if (other == creator) {
    instance_destroy(); // Destroy the big shot after impact
    other.shot_exist = false;
}