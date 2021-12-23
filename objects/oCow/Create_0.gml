/// @description Insert description here
// You can write your code in this editor

pickup_distance_trav = 0;
pickup_ufo = -1;

state = "Walking";

var speed_randomiser = random_range(0, 10);
if(speed_randomiser == 0) {
	move_speed = 4;
} else {
	move_speed = random_range(1, 3);
}

alarm[0] = COW_ANIMATION_SPEED;
