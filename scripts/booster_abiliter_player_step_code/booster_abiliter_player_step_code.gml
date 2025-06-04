function booster_abiliter_player_step_code(){
	
	oPlayer.booster_ability_cooldown = oPlayer.booster_ability_cooldown - 1
	
	if keyboard_check(ord("B")) && oPlayer.booster_ability_cooldown = 0 {
		var direction_to_mouse = point_direction(x,y,mouse_x,mouse_y)
		accelerate(oPlayer, 5, direction_to_mouse)
		oPlayer.booster_ability_cooldown = 480
	}	
}