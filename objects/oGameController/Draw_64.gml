/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fScore);
draw_text(room_width * 0.5, 16, "Score: " + string(score));
if (highScoreMet) 
{
	draw_text(room_width * 0.5, 64, "NEW HIGH SCORE!");
}

if(game_over) {
	
	draw_set_color(c_black);
	draw_rectangle((room_width * 0.5) - 120, (room_height * 0.5) - 110, (room_width * 0.5) + 120, (room_height * 0.5) + 10, false);
	
	draw_set_color(c_white);
	// Game over message
	draw_set_font(fTitle);
	draw_text(room_width * 0.5, room_height * 0.5 - 100, "GAME OVER");
	
	// Escape to return to menu
	draw_set_font(fSmall);
	draw_text(room_width * 0.5, room_height * 0.5 - 32, "Press Escape to return to the menu.");
}
