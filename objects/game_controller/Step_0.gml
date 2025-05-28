if game_controller.in_round = true {
	if instance_number(oOpp) = 0 {
		finish_round()
		game_controller.in_round = false
		// he likes to reference himself in third person
	}
}