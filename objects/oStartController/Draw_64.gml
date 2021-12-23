/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fTitle);
draw_set_halign(fa_center);
draw_text(room_width / 2, 64, GAME_TITLE);

draw_set_font(fSmall);
draw_text(room_width / 2, 120, "( High Score: " + string(highScore) + " )");

// Draw UFOs to show players
draw_set_font(fSmall);
draw_set_color(c_white);
draw_set_halign(fa_center);

// Show Player Indicators
var _x = (room_width * 0.25) - 100 - 20;
var _y = room_height - 72;

var p1 = instance_create_layer( _x, _y, "Ufos", oMenuUfo);
p1.image_blend = P1_COLOUR;
draw_text(_x, _y + 24, "Player 1");

_x = (room_width * 0.25) * 2 - 60 - 20;
_y = room_height - 72;
var p2 = instance_create_layer(_x, _y, "Ufos", oMenuUfo);
p2.image_blend = P2_COLOUR;
draw_text(_x, _y + 24, "Player 2");

_x = (room_width * 0.25) * 3 - 20;
_y = room_height - 72;
var p3 = instance_create_layer(_x, _y, "Ufos", oMenuUfo);
p3.image_blend = P3_COLOUR;
draw_text(_x, _y + 24, "Player 3");

// Show controls
draw_set_font(fSmall);
draw_set_halign(fa_left);

_x = (room_width * 0.25) - 40 - 20;
_y = room_height - 72;
draw_text(_x, _y - 12, "Move: WASD");
draw_text(_x, _y + 12, "Pick Up: Q or E");

_x = (room_width * 0.25) * 2 - 20;
_y = room_height - 72;
draw_text(_x, _y - 12, "Move: IJKL");
draw_text(_x, _y + 12, "Pick Up: U or O");

_x = (room_width * 0.25) * 3 + 60 - 20;
_y = room_height - 72;
draw_text(_x, _y - 12, "Move: 8456 (Keypad)");
draw_text(_x, _y + 12, "Pick Up: 7 or 9");


