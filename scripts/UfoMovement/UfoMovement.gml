// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UfoMovement(){
	
	var r = keyboard_check(right_key);
	var l = keyboard_check(left_key);
	var u = keyboard_check(up_key);
	var d = keyboard_check(down_key);

	var inputDirection = point_direction(0, 0, r - l, d - u);
	var inputMagnitude = (r - l != 0) || (d - u != 0);

	var hSpeed = lengthdir_x(inputMagnitude * MOVE_SPEED, inputDirection);
	var vSpeed = lengthdir_y(inputMagnitude * MOVE_SPEED, inputDirection);

	// Collision with fence
	if(place_meeting(x + hSpeed, y, oFence)) {
		hSpeed = 0;
	}
	if(place_meeting(x, y + vSpeed, oFence)) {
		vSpeed = 0;
	}
	// Collision with boundaries (left and right)
	if(x + hSpeed - (SHADOW_WIDTH / 2) <= 0) {
		hSpeed = 0;
	}
	if(x + hSpeed + (SHADOW_WIDTH / 2) >= room_width) {
		hSpeed = 0;
	}

	x += hSpeed;
	y += vSpeed;
	
}