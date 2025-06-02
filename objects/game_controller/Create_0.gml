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

// The big boon initialization

heavy_hitter_boon = {
	title: "Heavy Hitter",
	description : "Increase shot damage, but decreases shot velocity",
	sprite_list : [
		oBoon_sprite_Heavy_Hitter_0, oBoon_sprite_Heavy_Hitter_1, oBoon_sprite_Heavy_Hitter_2],
	boon_function : heavy_hitter,
	max_selections : 3  
}

nothing_boon_dict = {
	title : "Nothing",
	description : "A fresh copy of Jack Shit.. or is it?",
	sprite_list : [
		oBoon_sprite_Nothing_0, oBoon_sprite_Nothing_1, oBoon_sprite_Nothing_2],
	boon_function : nothing_boon,
	max_selections : 3
}

expanded_fuel_stores_boon = {
	title : "Expanded Fuel Stores",
	description : "Increases energy capacity",
	sprite_list : [
		oBoon_sprite_Expanded_Fuel_Stores_0, oBoon_sprite_Expanded_Fuel_Stores_1, oBoon_sprite_Expanded_Fuel_Stores_2],
	boon_function : expanded_fuel_stores,
	max_selections : 3
}

// Below here are the unfinished boons

booster_ability = {
	title : "Booster Ability",
	description : "Press B to give yourself a boost in speed towards your cursor"
}

explosive_bullets = " you should "

shield = "shield that blocsk shit"

shield_knockbacky = "eda"

shield_get_big = "e"

boon_list = ds_list_create()

ds_list_add(boon_list,
heavy_hitter_boon, nothing_boon_dict, expanded_fuel_stores_boon)