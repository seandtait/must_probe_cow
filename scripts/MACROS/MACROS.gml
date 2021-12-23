// Game Settings
#macro GAME_TITLE					"Must Probe Cow"
#macro UFO_Y_OFFSET					-128
#macro MOVE_SPEED					8
#macro SHADOW_WIDTH					72
#macro BUTTON_WIDTH					256
#macro COW_ANIMATION_SPEED			12
#macro COW_STARTING_X				-64
#macro COW_PICKUP_DISTANCE			100
#macro COW_PICKUP_SPEED				3
//#macro COW_PICKUP_SCALE_SPEED		0.03
#macro COW_PICKUP_SCALE_SPEED		0.015
#macro COW_PICKUP_ROTATION_SPEED	8
#macro COW_DEFAULT_SPAWN_SPEED		80
#macro COW_SPAWN_REDUCTION			0.25

// Player default positions
#macro P1_X		room_width / 2
#macro P1_Y		room_height / 2

#macro P2_X		room_width / 2
#macro P2_Y		room_height / 2 + 100

#macro P3_X		room_width / 2
#macro P3_Y		room_height / 2 - 100

// Player Inputs
#macro	P1_R		ord("D")
#macro	P1_U		ord("W")
#macro	P1_L		ord("A")
#macro	P1_D		ord("S")
#macro	P1_PICKUPL	ord("Q")
#macro	P1_PICKUPR	ord("E")

#macro	P2_R		ord("L")
#macro	P2_U		ord("I")
#macro	P2_L		ord("J")
#macro	P2_D		ord("K")
#macro	P2_PICKUPL	ord("U")
#macro	P2_PICKUPR	ord("O")

#macro	P3_R		vk_numpad6
#macro	P3_U		vk_numpad8
#macro	P3_L		vk_numpad4
#macro	P3_D		vk_numpad5
#macro	P3_PICKUPL	vk_numpad7
#macro	P3_PICKUPR	vk_numpad9

// Player Colours
#macro P1_COLOUR	c_white
#macro P2_COLOUR	c_red
#macro P3_COLOUR	c_blue




function MACROS(){

}