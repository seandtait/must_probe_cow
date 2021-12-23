// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DestroyPlayers(){

	with(oUfo) {
		instance_destroy();
	}

	with(oShadow) {
		instance_destroy();
	}

}