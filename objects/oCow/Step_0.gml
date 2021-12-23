/// @description Insert description here
// You can write your code in this editor

if(state == "Walking") {
	x += move_speed;
} else if (state == "Pickup") {
	move_towards_point( pickup_ufo.child_ufo.x, pickup_ufo.child_ufo.y, COW_PICKUP_SPEED);
	image_xscale -= COW_PICKUP_SCALE_SPEED;
	image_yscale -= COW_PICKUP_SCALE_SPEED;
	image_angle -= COW_PICKUP_ROTATION_SPEED;
	pickup_distance_trav += COW_PICKUP_SPEED;
	
	if(pickup_distance_trav >= COW_PICKUP_DISTANCE) {
		state = "";
		score++;
		pickup_ufo.allow_input = true;
		instance_destroy();
	}
}

