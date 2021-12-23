/// @description Insert description here
// You can write your code in this editor

highScoreMet = false;
game_over = false;

number_of_players = instance_number(oShadow);
score = 0;
spawn_speed = COW_DEFAULT_SPAWN_SPEED;

CreateCow();
alarm[0] = spawn_speed;
