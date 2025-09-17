if (!instance_exists(owner)) {
    instance_destroy();
    exit;
}

// Follow owner
x = owner.x;
y = owner.y;

