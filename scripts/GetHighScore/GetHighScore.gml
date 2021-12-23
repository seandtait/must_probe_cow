// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetHighScore(){
	var highScore = 0;
	
	ini_open("highscore.ini");
	highScore = ini_read_real("game", "score", 0);
	ini_close();
	
	return highScore;
}