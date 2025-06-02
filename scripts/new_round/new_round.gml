function new_round(){
	global.round += 1
	show_debug_message("new round triggered")
	oPlayer.energy = oPlayer.starting_energy
	oPlayer.visible = true	
	oPlayer.x = 683
	oPlayer.y = 125
	
	oEnergy_bar_object.visible = true
	
	var new_round_function = global.round_array[global.round]
	
	show_debug_message(new_round_function)
	
	oGame_controller.runfunction = new_round_function
	
	oGame_controller.in_round = true
	
	room_goto(roundroom)
}