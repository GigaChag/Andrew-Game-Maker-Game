function booster_ability(){
	// blah blah inject code into oPLayer key press event
	
	with oPlayer {
		booster_ability_cooldown = 480 
		// cooldown of 8 seconds
	}
	
	global.boon_list.booster_ability_boon.times_selected += 1
}