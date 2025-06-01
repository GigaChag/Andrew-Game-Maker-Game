if game_controller.in_round = true && game_controller.is_game_over = false {
	if instance_number(oOpp) = 0 {
		finish_round()
		game_controller.in_round = false
		// he likes to reference himself in third person
	}
} 

if game_controller.is_game_over = true {
	game_controller.in_round = false
	oPlayer.visible = false
	oPlayer.energy = 0
	energy_bar_object.visible = false
}

if game_controller.in_round = false {audio_pause_all()}