if (parried == true) {
    creator.shot_exist = false;
    creator.hp -= damage;
	creator.alarm[0] = 60;
	creator.image_blend = c_red;
    instance_destroy();
}

if (other == creator) {
    instance_destroy();
    shot_exist = false;
}