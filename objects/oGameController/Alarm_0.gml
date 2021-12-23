/// @description Insert description here
// You can write your code in this editor

CreateCow();

var reduction = COW_SPAWN_REDUCTION * number_of_players;
spawn_speed -= reduction;
if(spawn_speed <= 0) {
	spawn_speed = 0.1;
}

show_debug_message("Spawn speed: " + string(spawn_speed));
alarm[0] = spawn_speed;

highScore = GetHighScore();
