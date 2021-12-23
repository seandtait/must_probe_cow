// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOver(){
	
	show_debug_message("GAME OVER");
	
	// Stop spawning cows
	with(oGameController) {
		game_over = true;
		alarm[0] = 0;
		
		// Check score vs highScore
		if(score > highScore) {
			highScoreMet = true;
			SetNewHighScore(score);
		}
	}
	
	// Stop the game over spam
	with(oGameOverCol) {
		instance_destroy();
	}
	
	// Stop all cows
	with(oCow) {
		alarm[0] = 0;
		// If the cow is being picked up - just destroy it.
		if(state == "Pickup") {
			instance_destroy();
		} else {
			state = "";
		}
	}
	
	// Stop all input
	with(oShadow) {
		allow_input = false;
	}
	
	
	
	
	
}