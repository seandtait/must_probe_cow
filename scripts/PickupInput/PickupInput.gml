// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PickupInput(){
	
	var pl = keyboard_check_released(pickup_l);
	var pr = keyboard_check_pressed(pickup_r);
	
	if(pl || pr) {
		// Attempt pickup of cows
		if(place_meeting(x, y, oCow)) {
			cow = instance_nearest(x, y, oCow);
			if(cow.pickup_ufo == -1) {
				// Pick up the cow
				allow_input = false;
				cow.pickup_ufo = id;
				PickUpCow(cow);
			}
		} else {
			// TODO: Sound effect for "no cow here"
			
		}
	}
	
}