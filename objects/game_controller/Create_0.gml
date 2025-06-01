// intialize

//rounds
global.round = 1

global.round_dict = {
	round_2_lemons : 2}

randomize()

// music!?!

audio_play_sound(background_music1_kuiper, 10, true)


// colors

global.c_bananan_green_yellow = make_colour_rgb(180, 197, 86);

global.c_tanish = make_colour_rgb(225, 150, 90) 

heavy_hitter_boon_description = "Increase shot damage, but decreases shot velocity"
heavy_hitter_sprite_list = [
oBoon_sprite_Heavy_Hitter_0, oBoon_sprite_Heavy_Hitter_1, oBoon_sprite_Heavy_Hitter_2]

nothing_boon_description = "A fresh copy of Jack Shit"
nothing_boon_sprite_list = [
oBoon_sprite_Nothing_0, oBoon_sprite_Nothing_1, oBoon_sprite_Nothing_2]

expanded_fuel_stores_description = "Increases energy capacity"
expanded_fuel_stores_sprite_list = [
oBoon_sprite_Expanded_Fuel_Stores_0, oBoon_sprite_Expanded_Fuel_Stores_1, oBoon_sprite_Expanded_Fuel_Stores_2]

explosive_bullets = " you should "

shield = "shield that blocsk shit"

shield_knockbacky = "eda"

shield_get_big = "e"

boon_list = ds_list_create()

ds_list_add(boon_list,
["Heavy Hitter", heavy_hitter_boon_description, heavy_hitter, heavy_hitter_sprite_list],
["Nothing", nothing_boon_description, nothing_boon, nothing_boon_sprite_list],
["Expanded Fuel Stores", expanded_fuel_stores_description, expanded_fuel_stores, expanded_fuel_stores_sprite_list]
)