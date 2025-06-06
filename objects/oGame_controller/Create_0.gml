// intialize

runfunction = "none"

show_debug_message("Starting Game Controller Create Event initialization")

frames_without_glorb = 0

//rounds
global.round = 0

global.round_array = [
round1,
round2]

if global.round = 0 {round1()}

randomize()

// music!?!

audio_play_sound(background_music1_kuiper, 10, true)


// colors

global.c_bananan_green_yellow = make_colour_rgb(180, 197, 86);

global.c_tanish = make_colour_rgb(225, 150, 90)

// Boon picking value

global.boon_picking_values = {
	boon_choices : 3,
	possible_boon_tiers : [0, 1, 2]
}	



// The big boon initialization

heavy_hitter_boon = {
	boon_title: "Heavy Hitter",
	description : "Increase shot damage, but decreases shot velocity",
	sprite_array : [
		oBoon_Heavy_Hitter_0_sprite, oBoon_Heavy_Hitter_1_sprite, oBoon_Heavy_Hitter_2_sprite],
	boon_function : heavy_hitter,
	max_selections : 3,
	tiered : true,
	times_selected : 0
}

nothing_boon_dict = {
	boon_title : "Nothing",
	description : "A fresh copy of Jack Shit.. or is it?",
	sprite_array : [
		oBoon_Nothing_0_sprite, oBoon_Nothing_1_sprite, oBoon_Nothing_2_sprite],
	boon_function : nothing_boon,
	max_selections : 3,
	tiered : false,
	times_selected : 0
}

expanded_fuel_stores_boon = {
	boon_title : "Expanded Fuel Stores",
	description : "Increases energy capacity",
	sprite_array : [
		oBoon_Expanded_Fuel_Stores_0_sprite, oBoon_Expanded_Fuel_Stores_1_sprite, oBoon_Expanded_Fuel_Stores_2_sprite],
	boon_function : expanded_fuel_stores,
	max_selections : 3,
	tiered : true,
	times_selected : 0
}

// Below here are the unfinished boons

booster_ability_boon = {
	boon_title : "Booster Ability",
	description : "Press B to give yourself a boost in speed towards your cursor",
	sprite_array : [],
	boon_function : booster_ability,
	max_selections : 1,
	tiered : false,
	times_selected : 0
}

explosive_bullets = " you should "

shield = "shield that blocsk shit"

shield_knockbacky = "eda"

shield_get_big = "e"

global.boon_list = [
heavy_hitter_boon,
nothing_boon_dict, 
expanded_fuel_stores_boon]