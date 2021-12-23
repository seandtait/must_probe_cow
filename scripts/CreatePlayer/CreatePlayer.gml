// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreatePlayer(player_number){
	var _x = -1;
	var _y = -1;
	
	var right = -1;
	var up = -1;
	var left = -1;
	var down = -1;
	
	var pickup_l = -1;
	var pickup_r = -1;
	
	var colour = c_white;
	
	switch(player_number) {
		case 1:
			_x = P1_X;
			_y = P1_Y;
			
			right = P1_R;
			up = P1_U;
			left = P1_L;
			down = P1_D;
			pickup_l = P1_PICKUPL;
			pickup_r = P1_PICKUPR;
			
			colour = P1_COLOUR;
			break;
		case 2:
			_x = P2_X;
			_y = P2_Y;
			
			right = P2_R;
			up = P2_U;
			left = P2_L;
			down = P2_D;
			pickup_l = P2_PICKUPL;
			pickup_r = P2_PICKUPR;
			
			colour = P2_COLOUR;
			break;
		case 3:
			_x = P3_X;
			_y = P3_Y;
			
			right = P3_R;
			up = P3_U;
			left = P3_L;
			down = P3_D;
			pickup_l = P3_PICKUPL;
			pickup_r = P3_PICKUPR;
			
			colour = P3_COLOUR;
			break;
		default:
			break;
	}
	
	// Create a UFO shadow for the player
	var player = instance_create_layer(_x, _y, "Instances", oShadow);
	player.player_id = player_number;
	player.right_key = right;
	player.up_key = up;
	player.left_key = left;
	player.down_key = down;
	player.pickup_l = pickup_l;
	player.pickup_r = pickup_r;
	
	// Create a UFO for the player
	var ufo = instance_create_layer(_x, _y + UFO_Y_OFFSET, "Ufos", oUfo);
	ufo.shadow_parent = player;
	ufo.image_blend = colour;
	
	player.child_ufo = ufo;

}