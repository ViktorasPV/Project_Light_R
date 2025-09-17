if (alarm[1] < 0)
{
    instance_create_layer(other.x, other.y, "Effects", obj_enemy_hit_effect) {
    image_angle = irandom(360);
}
    
	hp -= other.damage;
	image_blend = c_red;
	
	kb_x = sign(x - other.x);
	kb_y = sign(y - other.y);
	alarm [1] = 20;
}